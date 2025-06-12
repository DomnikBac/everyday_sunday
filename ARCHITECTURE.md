🏗️ ARCHITECTURE.md - Everyday Sunday Technical Architecture
📋 Executive Summary
Everyday Sunday ist eine Flutter-basierte Wellness-App mit Clean Architecture, die intelligentes Supplement-Tracking durch KI-gestützte Empfehlungen ermöglicht. Die Architektur priorisiert Testbarkeit, Wartbarkeit und User Experience.

🎯 Architektur-Prinzipien
Core Principles

Clean Architecture - Klare Trennung von Verantwortlichkeiten
Offline First - Volle Funktionalität ohne Internet
Mobile Performance - 60 FPS, <2s Startup
Developer Experience - Code soll Freude machen
User Delight - Jede Interaktion soll begeistern

Design Decisions
yamlState Management: Riverpod (nicht Bloc)
  Grund: Compile-time safety, bessere DevX
  
Navigation: GoRouter (nicht Navigator 2.0)
  Grund: Deklarativ, Deep Linking ready
  
Storage: Hive + SharedPreferences (nicht SQLite)
  Grund: Performance, NoSQL flexibility
  
UI Approach: Custom Widgets (nicht packages)
  Grund: Volle Kontrolle, konsistentes Design

🏛️ System Architecture
Layer Architecture
┌─────────────────────────────────────────────┐
│            Presentation Layer               │
│  ┌─────────────────────────────────────┐   │
│  │         UI (Screens/Widgets)         │   │
│  └─────────────────────────────────────┘   │
│  ┌─────────────────────────────────────┐   │
│  │      State (Riverpod Providers)      │   │
│  └─────────────────────────────────────┘   │
├─────────────────────────────────────────────┤
│              Domain Layer                   │
│  ┌─────────────────────────────────────┐   │
│  │            Use Cases                 │   │
│  └─────────────────────────────────────┘   │
│  ┌─────────────────────────────────────┐   │
│  │     Entities & Repositories          │   │
│  └─────────────────────────────────────┘   │
├─────────────────────────────────────────────┤
│               Data Layer                    │
│  ┌─────────────────────────────────────┐   │
│  │       Repository Implementations     │   │
│  └─────────────────────────────────────┘   │
│  ┌─────────────────────────────────────┐   │
│  │    Data Sources (Local/Remote)       │   │
│  └─────────────────────────────────────┘   │
└─────────────────────────────────────────────┘
Dependency Flow
UI → Provider → UseCase → Repository → DataSource
     ↓                         ↑
     Entity ←─────────────────┘

📦 Core Components
1. Domain Layer (The Heart)
Entities
dart@immutable
class Supplement {
  final String id;
  final String name;
  final String category;
  final String dosage;
  final IconData icon;
  final Map<String, int> effectScores;
  final SupplementTiming timing;
  
  // Business Rules
  bool canBeTakenAt(TimeOfDay time) {
    switch (timing) {
      case SupplementTiming.morning:
        return time.hour < 12;
      case SupplementTiming.evening:
        return time.hour >= 18;
      case SupplementTiming.withMeal:
        return true;
    }
  }
}
Use Cases (One Class, One Purpose)
dartclass CalculateRecommendationsUseCase {
  final SupplementRepository repository;
  
  Future<Either<Failure, List<Recommendation>>> execute({
    required DayContext context,
    required UserPreferences preferences,
  }) async {
    // Komplexe Business Logic hier
    // KEINE UI Logic
    // KEINE Framework Dependencies
  }
}
2. Data Layer
Repository Pattern
dart// Domain Layer (Interface)
abstract class SupplementRepository {
  Future<Either<Failure, List<Supplement>>> getAllSupplements();
  Future<Either<Failure, void>> trackIntake(Intake intake);
}

// Data Layer (Implementation)
class SupplementRepositoryImpl implements SupplementRepository {
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  
  @override
  Future<Either<Failure, List<Supplement>>> getAllSupplements() async {
    // Offline-First Logic
    try {
      final localSupplements = await localDataSource.getSupplements();
      
      if (await networkInfo.isConnected) {
        try {
          final remoteSupplements = await remoteDataSource.getSupplements();
          await localDataSource.cacheSupplements(remoteSupplements);
          return Right(remoteSupplements);
        } catch (_) {
          return Right(localSupplements);
        }
      }
      
      return Right(localSupplements);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
3. Presentation Layer
State Management mit Riverpod
dart// Feature State
@freezed
class TodayState with _$TodayState {
  const factory TodayState({
    required List<Recommendation> recommendations,
    required DayPlan dayPlan,
    required bool isLoading,
    String? errorMessage,
  }) = _TodayState;
}

// State Notifier
class TodayNotifier extends StateNotifier<TodayState> {
  final CalculateRecommendationsUseCase calculateRecommendations;
  final TrackIntakeUseCase trackIntake;
  
  TodayNotifier({
    required this.calculateRecommendations,
    required this.trackIntake,
  }) : super(TodayState.initial());
  
  Future<void> loadRecommendations() async {
    state = state.copyWith(isLoading: true);
    
    final result = await calculateRecommendations.execute(
      context: _buildContext(),
      preferences: _preferences,
    );
    
    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      ),
      (recommendations) => state = state.copyWith(
        isLoading: false,
        recommendations: recommendations,
      ),
    );
  }
}

// Provider
final todayProvider = StateNotifierProvider<TodayNotifier, TodayState>((ref) {
  return TodayNotifier(
    calculateRecommendations: ref.watch(calculateRecommendationsUseCaseProvider),
    trackIntake: ref.watch(trackIntakeUseCaseProvider),
  );
});

🧩 Design Patterns
1. Repository Pattern

Abstraktion zwischen Domain und Data Layer
Ermöglicht Test Doubles
Offline-First Implementation

2. Use Case Pattern

Ein Use Case = Eine Business Action
Pure Business Logic
Testbar ohne Framework

3. Provider Pattern (Riverpod)

Dependency Injection
State Management
Lifecycle Management

4. Factory Pattern

Für Entity Creation
Für komplexe Initialisierung

5. Observer Pattern

Für Reactive UI
Stream-basierte Updates


🔄 Data Flow
User Action Flow
1. User Tap
   ↓
2. Widget Event Handler
   ↓
3. Provider Method Call
   ↓
4. Use Case Execution
   ↓
5. Repository Call
   ↓
6. Data Source Operation
   ↓
7. State Update
   ↓
8. UI Rebuild
State Update Flow
dart// 1. User swipes supplement card
onSwipeRight: () => ref.read(todayProvider.notifier).markAsTaken(supplement.id)

// 2. Provider handles action
Future<void> markAsTaken(String supplementId) async {
  final result = await trackIntake.execute(
    supplementId: supplementId,
    timestamp: DateTime.now(),
  );
  
  result.fold(
    (failure) => _showError(failure),
    (_) => _updateRecommendations(),
  );
}

// 3. State updates trigger UI rebuild
Consumer(
  builder: (context, ref, _) {
    final state = ref.watch(todayProvider);
    return SupplementList(recommendations: state.recommendations);
  },
)

🎨 UI Architecture
Widget Hierarchy
MaterialApp
└── GoRouter
    └── Scaffold
        ├── Body (Screen)
        │   ├── Feature Widgets
        │   └── Common Widgets
        └── NavigationBar

Screen Types:
- ConsumerWidget (reads state)
- ConsumerStatefulWidget (reads state + local state)
- HookConsumerWidget (reads state + hooks)
Widget Design Rules

Single Responsibility - Ein Widget, eine Aufgabe
Composition over Inheritance - Kleine Widgets kombinieren
Const Constructors - Wo immer möglich
Keys für Listen - Immer ValueKey oder UniqueKey

Responsive Design
dartclass ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop ?? tablet ?? mobile;
        } else if (constraints.maxWidth >= 600) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}

🧪 Testing Architecture
Test Pyramid
         E2E Tests (10%)
        /            \
    Integration (30%) \
   /                   \
  Unit Tests (60%)      \
 /______________________\
Testing Strategy
dart// 1. Unit Tests - Domain Layer
test('calculateRecommendations returns morning supplements', () {
  // Arrange
  final useCase = CalculateRecommendationsUseCase(
    repository: MockSupplementRepository(),
  );
  
  // Act
  final result = await useCase.execute(
    context: DayContext.morning(),
    preferences: UserPreferences.default(),
  );
  
  // Assert
  expect(result.isRight(), true);
  result.fold(
    (_) => fail('Should not fail'),
    (recommendations) => expect(
      recommendations.any((r) => r.supplement.timing == SupplementTiming.morning),
      true,
    ),
  );
});

// 2. Widget Tests - Presentation Layer
testWidgets('SupplementCard shows swipe hint', (tester) async {
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        home: SupplementCard(supplement: testSupplement),
      ),
    ),
  );
  
  expect(find.text('Swipe right to mark as taken'), findsOneWidget);
});

// 3. Integration Tests - Full Flow
testWidgets('Complete check-in flow', (tester) async {
  await tester.pumpWidget(MyApp());
  
  // Open check-in
  await tester.tap(find.byIcon(Icons.add));
  await tester.pumpAndSettle();
  
  // Fill form
  await tester.enterText(find.byType(TextField), 'Feeling tired');
  await tester.tap(find.text('Save'));
  await tester.pumpAndSettle();
  
  // Verify recommendations updated
  expect(find.text('B-Complex'), findsOneWidget);
});

🔌 External Integrations
API Integration
dart@RestApi(baseUrl: "https://api.everydaysunday.com/v1")
abstract class EverydaySundayApi {
  factory EverydaySundayApi(Dio dio) = _EverydaySundayApi;
  
  @GET("/supplements")
  Future<List<SupplementDto>> getSupplements();
  
  @POST("/analytics/track")
  Future<void> trackEvent(@Body() TrackingEvent event);
}
KI Integration Points
dartclass AIService {
  // 1. Text Analysis
  Future<ContextAnalysis> analyzeCheckIn(String text) async {
    // OpenAI API Call
    final response = await _openAI.complete(
      prompt: _buildAnalysisPrompt(text),
      model: 'gpt-4',
    );
    
    return ContextAnalysis.fromAIResponse(response);
  }
  
  // 2. Smart Scheduling
  Future<List<TimeSlot>> optimizeSchedule(
    List<Supplement> supplements,
    DayPlan dayPlan,
  ) async {
    // Complex AI logic for optimal timing
  }
}

🚀 Performance Architecture
Optimization Strategies

Const Widgets - Reduziert Rebuilds
Lazy Loading - ListView.builder
Image Caching - cached_network_image
Debouncing - Für Search/Input
Memoization - Für expensive computations

Performance Monitoring
dartclass PerformanceMonitor {
  static void trackScreenLoad(String screenName) {
    final stopwatch = Stopwatch()..start();
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      stopwatch.stop();
      analytics.track('screen_load', {
        'screen': screenName,
        'duration_ms': stopwatch.elapsedMilliseconds,
      });
    });
  }
}

🔐 Security Architecture
Data Protection

Verschlüsselung - Sensitive Daten mit Hive Encryption
API Keys - Niemals im Code, immer Environment Variables
User Data - Minimal sammeln, maximal schützen
Permissions - Nur was nötig ist

Secure Storage
dartclass SecureStorage {
  static const _storage = FlutterSecureStorage();
  
  static Future<void> saveApiKey(String key) async {
    await _storage.write(key: 'api_key', value: key);
  }
  
  static Future<String?> getApiKey() async {
    return await _storage.read(key: 'api_key');
  }
}

📱 Platform-Specific Architecture
iOS
yamlMinimum Version: iOS 13.0
Swift Version: 5.0
Capabilities:
  - HealthKit (future)
  - Push Notifications
  - Background Fetch
Android
yamlMinimum SDK: 21 (Android 5.0)
Target SDK: 34 (Android 14)
Permissions:
  - INTERNET
  - VIBRATE
  - RECEIVE_BOOT_COMPLETED
  - POST_NOTIFICATIONS

🔄 CI/CD Architecture
Build Pipeline
yaml1. Code Push → GitHub
2. GitHub Actions triggered
3. Run Tests (Unit, Widget, Integration)
4. Code Quality Checks (lint, format)
5. Build APK/IPA
6. Deploy to TestFlight/Play Console
7. Notify Team
Release Strategy
main branch → Production
develop branch → Beta
feature/* → Development

🎯 Architecture Decision Records (ADRs)
ADR-001: Riverpod over Bloc
Status: Accepted
Context: Need for state management
Decision: Use Riverpod
Consequences: Better compile-time safety, steeper learning curve
ADR-002: Hive over SQLite
Status: Accepted
Context: Need local storage
Decision: Use Hive for flexibility
Consequences: NoSQL approach, better performance, less complex queries
ADR-003: Custom Widgets over Packages
Status: Accepted
Context: Need consistent UI
Decision: Build custom widget library
Consequences: More control, more maintenance

📈 Scalability Considerations
Current Scale

Users: 1-10K
Data: <100MB per user
API Calls: <1000/day per user

Future Scale Planning

Pagination für große Listen
Lazy Loading für Bilder
Background Sync für Offline-First
CDN für statische Assets


🏁 Architecture Checklist
Vor jedem Feature

 Passt es in die Clean Architecture?
 Ist es testbar?
 Folgt es unseren Patterns?
 Ist die Performance bedacht?
 Ist es wartbar?

Code Review Checklist

 Single Responsibility beachtet?
 Dependencies richtig herum?
 Error Handling vollständig?
 Tests geschrieben?
 Dokumentation aktualisiert?


Version: 1.0.0
Letzte Aktualisierung: [DATUM]
Nächstes Architecture Review: [DATUM + 1 Monat]
Maintainer: Claude (Chief Architect)

🔥 Architecture Mantra

"Architecture is about intent, not frameworks."

Uncle Bob


Make it work, make it right, make it fast - in that order!