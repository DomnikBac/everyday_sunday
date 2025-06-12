# ⚠️ VERBINDLICHE SYSTEMREGEL

Jede KI, jeder Entwickler, jede Entscheidung orientiert sich an diesem Plan.
🚀 DEVELOPMENT_PLAN.md - Everyday Sunday Flutter App
🎯 MISSION STATEMENT
Ziel: Eine Flutter-App die Supplement-Tracking so einfach und intelligent macht, dass Nutzer jeden Tag gerne damit interagieren. Performance, Usability und Erweiterbarkeit stehen über allem.
📋 DIESER PLAN IST GESETZ

JEDE Codezeile muss diesem Plan folgen
JEDE Architektur-Entscheidung hier dokumentiert
JEDE KI liest dies ZUERST vor dem Coden
KEINE Abweichungen ohne Dokumentation


🏗️ PROJEKT-STRUKTUR (EXAKT SO!)
everyday_sunday/
├── lib/
│   ├── core/
│   │   ├── constants/
│   │   │   ├── app_colors.dart        # Color(0xFF607D74) etc.
│   │   │   ├── app_dimensions.dart    # spacing, sizes
│   │   │   ├── app_strings.dart       # alle Texte
│   │   │   └── app_constants.dart     # sonstige Konstanten
│   │   ├── errors/
│   │   │   ├── failures.dart          # abstract Failure class
│   │   │   ├── exceptions.dart        # custom Exceptions
│   │   │   └── error_messages.dart    # user-friendly messages
│   │   ├── utils/
│   │   │   ├── date_helpers.dart      # DateTime extensions
│   │   │   ├── validators.dart        # input validation
│   │   │   └── formatters.dart        # display formatting
│   │   ├── theme/
│   │   │   ├── app_theme.dart         # ThemeData
│   │   │   ├── text_styles.dart       # TextTheme
│   │   │   └── widget_themes.dart     # component themes
│   │   └── router/
│   │       ├── app_router.dart        # GoRouter setup
│   │       └── route_names.dart       # route constants
│   │
│   ├── data/
│   │   ├── datasources/
│   │   │   ├── local/
│   │   │   │   ├── supplement_local_datasource.dart
│   │   │   │   ├── day_plan_local_datasource.dart
│   │   │   │   └── preferences_local_datasource.dart
│   │   │   └── remote/
│   │   │       ├── ai_remote_datasource.dart
│   │   │       └── analytics_remote_datasource.dart
│   │   ├── models/
│   │   │   ├── supplement_model.dart   # mit fromJson/toJson
│   │   │   ├── recommendation_model.dart
│   │   │   ├── day_plan_model.dart
│   │   │   └── check_in_model.dart
│   │   └── repositories/
│   │       ├── supplement_repository_impl.dart
│   │       ├── day_plan_repository_impl.dart
│   │       └── analytics_repository_impl.dart
│   │
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── supplement.dart         # immutable, with copyWith
│   │   │   ├── recommendation.dart
│   │   │   ├── day_plan.dart
│   │   │   ├── check_in.dart
│   │   │   └── week_stats.dart
│   │   ├── repositories/
│   │   │   ├── supplement_repository.dart  # abstract class
│   │   │   ├── day_plan_repository.dart
│   │   │   └── analytics_repository.dart
│   │   └── usecases/
│   │       ├── supplement/
│   │       │   ├── calculate_recommendations_usecase.dart
│   │       │   ├── track_supplement_intake_usecase.dart
│   │       │   ├── get_supplement_history_usecase.dart
│   │       │   └── analyze_supplement_effects_usecase.dart
│   │       ├── plan/
│   │       │   ├── generate_day_plan_usecase.dart
│   │       │   ├── update_meal_times_usecase.dart
│   │       │   ├── calculate_supplement_timing_usecase.dart
│   │       │   └── optimize_supplement_schedule_usecase.dart
│   │       └── analysis/
│   │           ├── extract_context_tags_usecase.dart
│   │           ├── analyze_user_input_usecase.dart
│   │           ├── calculate_effect_scores_usecase.dart
│   │           └── generate_insights_usecase.dart
│   │
│   ├── presentation/
│   │   ├── providers/
│   │   │   ├── global/
│   │   │   │   ├── app_state_provider.dart
│   │   │   │   ├── user_preferences_provider.dart
│   │   │   │   └── notification_provider.dart
│   │   │   └── features/
│   │   │       ├── today/
│   │   │       │   ├── today_state_provider.dart
│   │   │       │   ├── recommendations_provider.dart
│   │   │       │   └── check_in_provider.dart
│   │   │       ├── week/
│   │   │       │   ├── week_stats_provider.dart
│   │   │       │   └── mood_chart_provider.dart
│   │   │       └── inventory/
│   │   │           ├── inventory_provider.dart
│   │   │           └── inventory_filter_provider.dart
│   │   ├── screens/
│   │   │   ├── today/
│   │   │   │   ├── today_screen.dart
│   │   │   │   └── widgets/
│   │   │   │       ├── greeting_card.dart
│   │   │   │       ├── quick_actions.dart
│   │   │   │       ├── ai_input_field.dart
│   │   │   │       ├── horizontal_timeline.dart
│   │   │   │       └── swipeable_supplement_card.dart
│   │   │   ├── week/
│   │   │   │   ├── week_screen.dart
│   │   │   │   └── widgets/
│   │   │   │       ├── mood_chart.dart
│   │   │   │       ├── stats_cards.dart
│   │   │   │       └── day_detail_list.dart
│   │   │   ├── inventory/
│   │   │   │   ├── inventory_screen.dart
│   │   │   │   └── widgets/
│   │   │   │       ├── supplement_list_item.dart
│   │   │   │       ├── category_filter_chips.dart
│   │   │   │       └── search_bar.dart
│   │   │   └── profile/
│   │   │       ├── profile_screen.dart
│   │   │       └── widgets/
│   │   │           ├── user_stats_card.dart
│   │   │           ├── goals_section.dart
│   │   │           └── settings_list.dart
│   │   └── widgets/
│   │       ├── common/
│   │       │   ├── buttons/
│   │       │   │   ├── primary_button.dart
│   │       │   │   ├── secondary_button.dart
│   │       │   │   └── icon_button_custom.dart
│   │       │   ├── cards/
│   │       │   │   ├── base_card.dart
│   │       │   │   └── info_card.dart
│   │       │   └── dialogs/
│   │       │       ├── check_in_dialog.dart
│   │       │       ├── day_plan_dialog.dart
│   │       │       └── chat_dialog.dart
│   │       └── animations/
│   │           ├── fade_in_animation.dart
│   │           ├── slide_animation.dart
│   │           └── typing_indicator.dart
│   │
│   ├── services/
│   │   ├── notification_service.dart
│   │   ├── storage_service.dart
│   │   ├── ai_service.dart
│   │   ├── export_service.dart
│   │   └── analytics_service.dart
│   │
│   └── main.dart
│
├── test/
│   ├── integration/
│   ├── unit/
│   │   └── domain/
│   │        └── entities/
│   │            └── supplement_test.dart
│   └── widget/
├── assets/
│   ├── images/
│   ├── fonts/
│   └── icons/
├── docs/
│   ├── API.md
│   ├── ARCHITECTURE.md
│   └── DEPLOYMENT.md
├── pubspec.yaml
├── README.md
├── AI_CONTEXT.md
├── ARCHITECTURE.md
├── DEVELOPMENT_PLAN.md
├── CHANGELOG.md
├── LEGAL_COMPLIANCE.md
└── SUPPLEMENT_INFO.md

🎨 ARCHITEKTUR-PRINZIPIEN
Clean Architecture Layers
┌─────────────────────────────────────┐
│         Presentation Layer          │ ← UI, Widgets, Providers
├─────────────────────────────────────┤
│           Domain Layer              │ ← Business Logic, Entities
├─────────────────────────────────────┤
│            Data Layer               │ ← APIs, Database, Models
└─────────────────────────────────────┘

Regel: Dependencies zeigen IMMER nach innen!
SOLID Principles - IMMER BEFOLGEN

Single Responsibility - Eine Klasse, eine Aufgabe
Open/Closed - Offen für Erweiterung, geschlossen für Änderung
Liskov Substitution - Subtypen müssen austauschbar sein
Interface Segregation - Viele kleine Interfaces > ein großes
Dependency Inversion - Abstraktionen, keine Konkretionen


📐 CODING STANDARDS
Naming Conventions
dart// Classes: PascalCase
class SupplementCard extends StatelessWidget {}

// Files: snake_case
supplement_card.dart

// Variables & Functions: camelCase
final supplementName = 'Vitamin D';
void calculateDosage() {}

// Constants: lowerCamelCase (nicht SCREAMING)
const primaryColor = Color(0xFF607D74);
const maxSupplementsPerDay = 10;

// Private: mit underscore
String _privateMethod() {}

// Enums: PascalCase
enum SupplementTiming { morning, noon, evening }
File Structure Template
dart// 1. Imports (in dieser Reihenfolge!)
import 'dart:async';                          // Dart SDK
import 'dart:convert';

import 'package:flutter/material.dart';       // Flutter SDK
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';  // Packages
import 'package:lucide_icons/lucide_icons.dart';

import '../../domain/entities/supplement.dart';  // Project imports
import '../widgets/common/base_card.dart';

// 2. Part files (falls vorhanden)
part 'supplement_card.g.dart';

// 3. Global constants für diese Datei
const _cardElevation = 2.0;

// 4. Main class/function
class SupplementCard extends ConsumerWidget {
  // 5. Properties (final zuerst, dann var)
  final Supplement supplement;
  final VoidCallback onTap;
  
  // 6. Constructor
  const SupplementCard({
    super.key,
    required this.supplement,
    required this.onTap,
  });
  
  // 7. Override methods
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
  
  // 8. Public methods
  
  // 9. Private methods
}

// 10. Additional classes (falls nötig)
Code Quality Rules
dart// ✅ GOOD: Kurze, klare Funktionen
Future<void> saveCheckIn(CheckIn checkIn) async {
  try {
    await _localStorage.save(checkIn.toJson());
    _analytics.track('check_in_saved');
  } catch (e) {
    throw CacheException('Failed to save check-in');
  }
}

// ❌ BAD: Lange, unklare Funktionen
Future<void> doEverything(data) async {
  // 100 Zeilen Code...
}

// ✅ GOOD: Explicit types
final List<Supplement> supplements = [];

// ❌ BAD: Var everywhere
var data = [];

// ✅ GOOD: Null safety
final String? userName = prefs.getString('name');
if (userName != null) {
  // use userName
}

// ❌ BAD: Ignoring null safety
final name = prefs.getString('name')!; // könnte crashen!

🚀 DEVELOPMENT WORKFLOW
Phase 1: Foundation (Tag 1-3)
yamlZiel: Solides Fundament ohne UI
Tasks:
  - [ ] Domain Layer komplett
  - [ ] Basis Repository Interfaces  
  - [ ] Core Constants & Theme
  - [ ] Error Handling Setup
  - [ ] Dependency Injection

Output: 
  - Entities mit Tests
  - Repository Contracts
  - Theme definiert
  - DI Container ready
Phase 2: Data Layer (Tag 4-5)
yamlZiel: Datenpersistenz funktioniert
Tasks:
  - [ ] Hive/SharedPreferences Setup
  - [ ] Model Classes mit Serialization
  - [ ] Repository Implementations
  - [ ] Local DataSources
  - [ ] Migration Strategy

Output:
  - Funktionierende Persistenz
  - Alle Models mit Tests
  - Offline-First implementiert
Phase 3: Business Logic (Tag 6-7)
yamlZiel: Intelligente Empfehlungen
Tasks:
  - [ ] Use Cases implementieren
  - [ ] Recommendation Algorithm
  - [ ] Effect Score Calculation
  - [ ] Time-based Logic
  - [ ] KI Integration vorbereiten

Output:
  - Alle Use Cases mit Tests
  - Recommendation Engine läuft
  - Mock AI Service
Phase 4: Basic UI (Tag 8-10)
yamlZiel: Funktionale Screens
Tasks:
  - [ ] Navigation Setup
  - [ ] Today Screen
  - [ ] Basic Widgets
  - [ ] State Management
  - [ ] Loading/Error States

Output:
  - Navigierbare App
  - Today Screen funktioniert
  - Provider Setup komplett
Phase 5: Advanced Features (Tag 11-14)
yamlZiel: Killer Features
Tasks:
  - [ ] Swipe Gestures
  - [ ] Animations
  - [ ] Week Analytics
  - [ ] PDF Export
  - [ ] Notifications

Output:
  - Smooth UX
  - Alle Features implementiert
  - Export funktioniert
Phase 6: Polish & Ship (Tag 15-16)
yamlZiel: Production Ready
Tasks:
  - [ ] Performance Optimierung
  - [ ] Error Tracking
  - [ ] Analytics
  - [ ] Store Assets
  - [ ] CI/CD Pipeline

Output:
  - App Store Ready
  - < 2s Startup Time
  - 0 Crashes

🧪 TESTING STRATEGY
Test Pyramid
         /\
        /  \    E2E Tests (10%)
       /----\   
      /      \  Integration Tests (30%)
     /--------\
    /          \ Unit Tests (60%)
   /____________\
Testing Rules
dart// 1. Test Naming: test_what_when_then
test('calculateRecommendations_withMorningContext_returnsVitaminD', () {
  // Arrange
  final useCase = CalculateRecommendationsUseCase();
  
  // Act
  final result = useCase.execute(TimeContext.morning);
  
  // Assert
  expect(result.any((r) => r.supplement.name == 'Vitamin D'), true);
});

// 2. AAA Pattern IMMER nutzen
// 3. Ein Assert pro Test
// 4. Test Doubles nutzen (Mock, Stub, Fake)
// 5. Tests müssen FAST sein
Coverage Requirements

Domain Layer: 100% (Business Logic!)
Use Cases: 90%+
Providers: 80%+
UI Widgets: 60%+ (kritische Flows)
Gesamt: >70%


📦 DEPENDENCIES (NUR DIESE!)
yamldependencies:
  # Flutter SDK
  flutter:
    sdk: flutter
    
  # State Management  
  flutter_riverpod: ^2.4.0
  
  # UI
  lucide_icons: ^0.257.0
  
  # Navigation
  go_router: ^12.1.0
  
  # Storage
  hive_flutter: ^1.1.0
  shared_preferences: ^2.2.0
  
  # Networking
  dio: ^5.3.0
  
  # Functional Programming
  dartz: ^0.10.1
  
  # Utilities
  equatable: ^2.0.5
  intl: ^0.18.0
  
  # Features
  flutter_local_notifications: ^16.0.0
  pdf: ^3.10.0
  share_plus: ^7.2.0
  fl_chart: ^0.64.0
  permission_handler: ^11.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  
  # Linting
  flutter_lints: ^3.0.0
  
  # Testing
  mockito: ^5.4.0
  build_runner: ^2.4.0
  
  # Code Generation
  freezed: ^2.4.0
  json_serializable: ^6.7.0

🎯 FEATURE IMPLEMENTATION GUIDE
Swipeable Supplement Card
dart// Requirements:
- Swipe right → Mark as taken (grün)
- Swipe left → Delete (rot)
- Haptic feedback
- Smooth animation (60 FPS)
- Undo option

// Implementation:
1. GestureDetector mit onHorizontalDrag
2. Transform.translate für Movement
3. Stack mit Background Actions
4. AnimatedContainer für Smoothness
5. HapticFeedback.lightImpact()
AI Integration Points
dart// 1. Check-In Analysis
String text = "Bin müde und gestresst";
→ Tags: [energie, stress, entspannung]
→ Recommendations: Ashwagandha, B-Complex

// 2. Smart Scheduling
"Meeting um 14 Uhr" 
→ L-Theanin 30min vorher
→ Keine sedierenden Supplements

// 3. Effect Tracking
Track intake → Mood changes → Adjust recommendations
Notification Strategy
dart// Smart Reminders:
- 30min vor geplanter Zeit
- Nur wenn Supplement verfügbar
- Gruppiert bei mehreren
- Snooze Option
- Quick Actions (Taken/Skip)

🚨 KRITISCHE PERFORMANCE METRIKEN
App Performance
yamlStartup Time: < 2 Sekunden
Screen Load: < 300ms
Animation FPS: 60 konstant
Memory Usage: < 150MB
Battery Drain: < 2% pro Stunde
APK Size: < 30MB
Code Metriken
yamlMethod Length: < 20 Zeilen
Class Length: < 200 Zeilen
Cyclomatic Complexity: < 10
Nesting Depth: < 4
Test Execution: < 5 Minuten
Build Time: < 2 Minuten

⚠️ HÄUFIGE FEHLER & LÖSUNGEN
State Management
dart// ❌ FEHLER: setState in StatelessWidget
// ✅ LÖSUNG: ConsumerWidget + StateNotifier

// ❌ FEHLER: Business Logic in UI
// ✅ LÖSUNG: Use Cases + Provider

// ❌ FEHLER: Uncontrolled Rebuilds
// ✅ LÖSUNG: const widgets + select()
Performance
dart// ❌ FEHLER: ListView mit 1000 Items
// ✅ LÖSUNG: ListView.builder

// ❌ FEHLER: Keine Keys bei Listen
// ✅ LÖSUNG: ValueKey oder UniqueKey

// ❌ FEHLER: Große Bilder
// ✅ LÖSUNG: Cached + Compressed

📱 PLATFORM SPECIFIC
iOS
yaml- HealthKit Integration vorbereiten
- iOS 13+ minimum
- Swift 5.0
- Privacy Descriptions
- App Transport Security
Android
yaml- Google Fit ready
- API 21+ (Android 5.0)
- Kotlin Support
- ProGuard Rules
- Permissions in Manifest

🚀 DEPLOYMENT CHECKLIST
Pre-Launch

 Version Bump (pubspec.yaml)
 CHANGELOG.md Update
 Screenshots (6.5", 5.5", iPad)
 Store Description (4000 chars)
 Keywords Research
 Privacy Policy URL
 Support Email

Technical

 Remove all print() statements
 Enable Crashlytics
 Configure Analytics
 Obfuscate Code
 Test auf echten Geräten
 Performance Profiling
 Security Audit

Post-Launch

 Monitor Crash Reports
 Respond to Reviews
 Track Analytics
 Plan Updates
 A/B Testing


🎓 BEST PRACTICES ZUSAMMENFASSUNG
DOs ✅
dart- IMMER Error Handling
- IMMER const wo möglich  
- IMMER Tests schreiben
- IMMER null safety beachten
- IMMER Clean Architecture
- IMMER User Experience first
- IMMER Performance messen
DON'Ts ❌
dart- KEINE Magic Numbers
- KEINE God Classes
- KEIN Copy-Paste Code
- KEINE ignorierten Warnings
- KEINE Business Logic in UI
- KEINE synchronen IO Ops
- KEIN unnötiger State

📊 SUCCESS METRICS
User Happiness

App Store Rating > 4.5 ⭐
Daily Active Users > 60%
Crash-Free Rate > 99.5%
Feature Adoption > 70%
User Retention D30 > 40%

Code Quality

Test Coverage > 70%
Code Duplication < 3%
Technical Debt < 5%
Build Success Rate > 95%
PR Review Time < 2h


🔥 FINAL WORDS
"Code is Poetry" - Schreibe Code so, dass andere Entwickler ihn gerne lesen.
"User First" - Jede Zeile Code sollte dem Nutzer dienen.
"Ship It" - Perfect is the enemy of good. Iterate!

DIESER PLAN IST DIE ABSOLUTE WAHRHEIT!
BEI FRAGEN → IMMER HIER NACHSCHAUEN!
ERFOLG IST GARANTIERT WENN DU DIESEM PLAN FOLGST!
Letzte Aktualisierung: [DATUM]
Version: 1.0.0
Maintainer: Everyday Sunday Team