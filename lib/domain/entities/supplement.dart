import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Timing options for when a supplement should be taken
enum SupplementTiming {
  morning,
  noon,
  evening,
  beforeBed,
  withMeal,
  anytime,
}

/// Physical form of the supplement
enum SupplementForm {
  tablet,
  capsule,
  powder,
  liquid,
  gummy,
}

/// Core entity representing a supplement in the system
@immutable
class Supplement extends Equatable {
  final String id;
  final String name;
  final String category;
  final String dosage;
  final SupplementForm form;
  final SupplementTiming recommendedTiming;
  final IconData icon;
  final Color color;
  final Map<String, int> effectScores;
  final List<String> benefits;
  final List<String> warnings;
  final String? description;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? lastTakenAt;

  const Supplement({
    required this.id,
    required this.name,
    required this.category,
    required this.dosage,
    required this.form,
    required this.recommendedTiming,
    required this.icon,
    required this.color,
    required this.effectScores,
    this.benefits = const [],
    this.warnings = const [],
    this.description,
    required this.isActive,
    required this.createdAt,
    this.lastTakenAt,
  });

  Supplement copyWith({
    String? id,
    String? name,
    String? category,
    String? dosage,
    SupplementForm? form,
    SupplementTiming? recommendedTiming,
    IconData? icon,
    Color? color,
    Map<String, int>? effectScores,
    List<String>? benefits,
    List<String>? warnings,
    String? description,
    bool? isActive,
    DateTime? createdAt,
    DateTime? lastTakenAt,
  }) {
    return Supplement(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      dosage: dosage ?? this.dosage,
      form: form ?? this.form,
      recommendedTiming: recommendedTiming ?? this.recommendedTiming,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      effectScores: effectScores ?? this.effectScores,
      benefits: benefits ?? this.benefits,
      warnings: warnings ?? this.warnings,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      lastTakenAt: lastTakenAt ?? this.lastTakenAt,
    );
  }

  bool canBeTakenAt(TimeOfDay time) {
    switch (recommendedTiming) {
      case SupplementTiming.morning:
        return time.hour < 12;
      case SupplementTiming.noon:
        return time.hour >= 11 && time.hour <= 14;
      case SupplementTiming.evening:
        return time.hour >= 18;
      case SupplementTiming.beforeBed:
        return time.hour >= 20;
      case SupplementTiming.withMeal:
        return (time.hour >= 6 && time.hour <= 9) ||
            (time.hour >= 11 && time.hour <= 14) ||
            (time.hour >= 18 && time.hour <= 20);
      case SupplementTiming.anytime:
        return true;
    }
  }

  bool conflictsWith(Supplement other) {
    if (id == other.id) return true;
    if (recommendedTiming == other.recommendedTiming &&
        recommendedTiming != SupplementTiming.anytime) {
      if (_competesForAbsorption(other)) return true;
    }
    return _hasKnownInteraction(other);
  }

  String getTimingDescription() {
    switch (recommendedTiming) {
      case SupplementTiming.morning:
        return 'Morgens (vor 12 Uhr)';
      case SupplementTiming.noon:
        return 'Mittags (11-14 Uhr)';
      case SupplementTiming.evening:
        return 'Abends (nach 18 Uhr)';
      case SupplementTiming.beforeBed:
        return '30-60 Min vor dem Schlafengehen';
      case SupplementTiming.withMeal:
        return 'Zu einer Mahlzeit';
      case SupplementTiming.anytime:
        return 'Jederzeit';
    }
  }

  String? getPrimaryEffect() {
    if (effectScores.isEmpty) return null;
    final sorted = effectScores.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sorted.first.key;
  }

  int? getDaysSinceLastTaken() {
    if (lastTakenAt == null) return null;
    return DateTime.now().difference(lastTakenAt!).inDays;
  }

  bool isDue() {
    if (!isActive) return false;
    if (lastTakenAt == null) return true;
    final now = DateTime.now();
    final last = lastTakenAt!;
    return now.year != last.year ||
        now.month != last.month ||
        now.day != last.day;
  }

  bool _competesForAbsorption(Supplement other) {
    const minerals = ['Calcium', 'Magnesium', 'Zink', 'Eisen'];
    final thisIsMineral = minerals.any((m) => name.contains(m));
    final otherIsMineral = minerals.any((m) => other.name.contains(m));
    return thisIsMineral && otherIsMineral;
  }

  bool _hasKnownInteraction(Supplement other) {
    final interactions = {
      'Calcium': ['Eisen', 'Zink'],
      'Zink': ['Calcium', 'Eisen'],
      'Eisen': ['Calcium', 'Zink', 'Grüner Tee'],
    };
    final thisInteractions = interactions[name] ?? [];
    return thisInteractions.any((i) => other.name.contains(i));
  }

  @override
  List<Object?> get props => [
        id,
        name,
        category,
        dosage,
        form,
        recommendedTiming,
        icon,
        color,
        effectScores,
        benefits,
        warnings,
        description,
        isActive,
        createdAt,
        lastTakenAt,
      ];
}
