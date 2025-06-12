import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:everyday_sunday/domain/entities/supplement.dart';

void main() {
  group('Supplement Entity', () {
    // Test data
    final testSupplement = Supplement(
      id: '1',
      name: 'Vitamin D3',
      category: 'Vitamine',
      dosage: '1000 IU',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: Icons.wb_sunny,
      color: Colors.orange,
      effectScores: const {'energy': 70, 'immunity': 90, 'mood': 60},
      benefits: const ['Immunsystem', 'Knochengesundheit', 'Stimmung'],
      warnings: const ['Nicht über 4000 IU täglich'],
      description: 'Das Sonnenvitamin',
      isActive: true,
      createdAt: DateTime(2024, 1, 1),
      lastTakenAt: DateTime.now().subtract(const Duration(days: 1)),
    );

    group('Equatable', () {
      test('should support value equality', () {
        final supplement1 = Supplement(
          id: '1',
          name: 'Vitamin D3',
          category: 'Vitamine',
          dosage: '1000 IU',
          form: SupplementForm.capsule,
          recommendedTiming: SupplementTiming.morning,
          icon: Icons.wb_sunny,
          color: Colors.orange,
          effectScores: const {},
          isActive: true,
          createdAt: DateTime(2024, 1, 1),
        );

        final supplement2 = Supplement(
          id: '1',
          name: 'Vitamin D3',
          category: 'Vitamine',
          dosage: '1000 IU',
          form: SupplementForm.capsule,
          recommendedTiming: SupplementTiming.morning,
          icon: Icons.wb_sunny,
          color: Colors.orange,
          effectScores: const {},
          isActive: true,
          createdAt: DateTime(2024, 1, 1),
        );

        expect(supplement1, equals(supplement2));
      });

      test('should return false for different supplements', () {
        final supplement1 = testSupplement;
        final supplement2 = testSupplement.copyWith(id: '2');

        expect(supplement1, isNot(equals(supplement2)));
      });
    });

    group('copyWith', () {
      test('should create a copy with updated fields', () {
        final updated = testSupplement.copyWith(
          name: 'Vitamin D3 Forte',
          dosage: '2000 IU',
        );

        expect(updated.name, equals('Vitamin D3 Forte'));
        expect(updated.dosage, equals('2000 IU'));
        expect(updated.id, equals(testSupplement.id));
        expect(updated.category, equals(testSupplement.category));
      });

      test('should maintain original values when no parameters provided', () {
        final copy = testSupplement.copyWith();

        expect(copy, equals(testSupplement));
      });
    });

    group('canBeTakenAt', () {
      test('morning supplement can be taken before noon', () {
        final morningSupplement = testSupplement;

        expect(morningSupplement.canBeTakenAt(const TimeOfDay(hour: 8, minute: 0)), isTrue);
        expect(morningSupplement.canBeTakenAt(const TimeOfDay(hour: 11, minute: 30)), isTrue);
        expect(morningSupplement.canBeTakenAt(const TimeOfDay(hour: 12, minute: 0)), isFalse);
        expect(morningSupplement.canBeTakenAt(const TimeOfDay(hour: 15, minute: 0)), isFalse);
      });

      test('evening supplement can be taken after 6 PM', () {
        final eveningSupplement = testSupplement.copyWith(
          recommendedTiming: SupplementTiming.evening,
        );

        expect(eveningSupplement.canBeTakenAt(const TimeOfDay(hour: 17, minute: 0)), isFalse);
        expect(eveningSupplement.canBeTakenAt(const TimeOfDay(hour: 18, minute: 0)), isTrue);
        expect(eveningSupplement.canBeTakenAt(const TimeOfDay(hour: 22, minute: 0)), isTrue);
      });

      test('withMeal supplement can be taken during meal times', () {
        final mealSupplement = testSupplement.copyWith(
          recommendedTiming: SupplementTiming.withMeal,
        );

        // Breakfast time
        expect(mealSupplement.canBeTakenAt(const TimeOfDay(hour: 7, minute: 0)), isTrue);
        // Between meals
        expect(mealSupplement.canBeTakenAt(const TimeOfDay(hour: 10, minute: 0)), isFalse);
        // Lunch time
        expect(mealSupplement.canBeTakenAt(const TimeOfDay(hour: 12, minute: 30)), isTrue);
        // Dinner time
        expect(mealSupplement.canBeTakenAt(const TimeOfDay(hour: 19, minute: 0)), isTrue);
      });

      test('anytime supplement can always be taken', () {
        final anytimeSupplement = testSupplement.copyWith(
          recommendedTiming: SupplementTiming.anytime,
        );

        for (var hour = 0; hour < 24; hour++) {
          expect(
            anytimeSupplement.canBeTakenAt(TimeOfDay(hour: hour, minute: 0)),
            isTrue,
          );
        }
      });
    });

    group('conflictsWith', () {
      test('should conflict with itself', () {
        expect(testSupplement.conflictsWith(testSupplement), isTrue);
      });

      test('should detect mineral competition', () {
        final calcium = testSupplement.copyWith(
          id: '2',
          name: 'Calcium',
          category: 'Mineralien',
        );

        final zinc = testSupplement.copyWith(
          id: '3',
          name: 'Zink',
          category: 'Mineralien',
        );

        expect(calcium.conflictsWith(zinc), isTrue);
        expect(zinc.conflictsWith(calcium), isTrue);
      });

      test('should not conflict if different timing and no interaction', () {
        final morning = testSupplement.copyWith(
          id: '2',
          name: 'B-Complex',
          recommendedTiming: SupplementTiming.morning,
        );

        final evening = testSupplement.copyWith(
          id: '3',
          name: 'Magnesium',
          recommendedTiming: SupplementTiming.evening,
        );

        expect(morning.conflictsWith(evening), isFalse);
      });
    });

    group('getTimingDescription', () {
      test('should return correct German descriptions', () {
        final timingTests = {
          SupplementTiming.morning: 'Morgens (vor 12 Uhr)',
          SupplementTiming.noon: 'Mittags (11-14 Uhr)',
          SupplementTiming.evening: 'Abends (nach 18 Uhr)',
          SupplementTiming.beforeBed: '30-60 Min vor dem Schlafengehen',
          SupplementTiming.withMeal: 'Zu einer Mahlzeit',
          SupplementTiming.anytime: 'Jederzeit',
        };

        timingTests.forEach((timing, expectedDescription) {
          final supplement = testSupplement.copyWith(recommendedTiming: timing);
          expect(supplement.getTimingDescription(), equals(expectedDescription));
        });
      });
    });

    group('getPrimaryEffect', () {
      test('should return effect with highest score', () {
        expect(testSupplement.getPrimaryEffect(), equals('immunity'));
      });

      test('should return null for empty effect scores', () {
        final supplement = testSupplement.copyWith(effectScores: {});
        expect(supplement.getPrimaryEffect(), isNull);
      });
    });

    group('getDaysSinceLastTaken', () {
      test('should calculate days correctly', () {
        final supplement = testSupplement.copyWith(
          lastTakenAt: DateTime.now().subtract(const Duration(days: 3)),
        );

        expect(supplement.getDaysSinceLastTaken(), equals(3));
      });

      test('should return null if never taken', () {
        final supplement = testSupplement.copyWith(lastTakenAt: null);
        expect(supplement.getDaysSinceLastTaken(), isNull);
      });
    });

    group('isDue', () {
      test('should return true if not taken today', () {
        final supplement = testSupplement.copyWith(
          lastTakenAt: DateTime.now().subtract(const Duration(days: 1)),
        );

        expect(supplement.isDue(), isTrue);
      });

      test('should return false if taken today', () {
        final supplement = testSupplement.copyWith(
          lastTakenAt: DateTime.now(),
        );

        expect(supplement.isDue(), isFalse);
      });

      test('should return true if never taken', () {
        final supplement = testSupplement.copyWith(lastTakenAt: null);
        expect(supplement.isDue(), isTrue);
      });

      test('should return false if not active', () {
        final supplement = testSupplement.copyWith(
          isActive: false,
          lastTakenAt: DateTime.now().subtract(const Duration(days: 1)),
        );

        expect(supplement.isDue(), isFalse);
      });
    });
  });
}