import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../../domain/entities/supplement.dart';

/// Complete database of all supplements from SUPPLEMENT_INFO.md
/// This serves as the source of truth for all supplement information
class SupplementDatabase {
  static final List<Supplement> defaultSupplements = [
    // ⚙️ Block 1: Fundament & Zellfunktion
    // 🔧 Mikronährstoff-Grundversorgung
    
    Supplement(
      id: 'magnesium-citrat',
      name: 'Magnesiumcitrat',
      category: 'Mineralstoffe',
      dosage: '200-400 mg',
      form: SupplementForm.powder,
      recommendedTiming: SupplementTiming.evening,
      icon: LucideIcons.moon,
      color: const Color(0xFF6B7280), // Grau
      effectScores: const {
        'sleep': 90,
        'stress': 85,
        'energy': 60,
        'muscle': 95,
      },
      benefits: const [
        'Muskelentspannung',
        'Besserer Schlaf',
        'Stressreduktion',
        'Aktiviert über 300 Enzyme',
        'Reguliert GABA-Rezeptoren',
      ],
      warnings: const [
        'Bei hoher Dosis abführend',
        'Nicht mit Eisen kombinieren (2h Abstand)',
        'Bei Niereninsuffizienz Vorsicht',
      ],
      description: 'Magnesium ist an über 300 enzymatischen Prozessen beteiligt. '
          'Besonders wichtig für Energieproduktion, Nervenleitung, Stresspufferung, '
          'Muskelfunktion und Schlafregulation. Die Citratform ist gut bioverfügbar '
          'und wirkt leicht abführend.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'zink-bisglycinat',
      name: 'Zink (Bisglycinat)',
      category: 'Spurenelemente',
      dosage: '15-30 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.shield,
      color: const Color(0xFF3B82F6), // Blau
      effectScores: const {
        'immunity': 95,
        'skin': 85,
        'hormones': 80,
        'mood': 60,
      },
      benefits: const [
        'Immunsystem & Infektabwehr',
        'Hormonsynthese (Testosteron, Schilddrüse)',
        'Haut, Nägel & Wundheilung',
        'Schleimhautschutz',
        'Antioxidativer Schutz',
      ],
      warnings: const [
        'Nicht mit Eisen, Magnesium oder Calcium kombinieren',
        'Auf nüchternen Magen evtl. Übelkeit',
        'Bei Dauereinnahme >25mg Kupfer beachten',
      ],
      description: 'Essentielles Spurenelement für über 300 enzymatische Reaktionen. '
          'Besonders wichtig für Immunsystem, Hormonsynthese und Hautgesundheit. '
          'Die Bisglycinat-Form ist besonders gut verträglich.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'vitamin-d3-k2',
      name: 'Vitamin D3 + K2',
      category: 'Vitamine',
      dosage: '2000-4000 IE D3 + 100-200 µg K2',
      form: SupplementForm.liquid,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.sun,
      color: const Color(0xFFF59E0B), // Orange
      effectScores: const {
        'immunity': 90,
        'mood': 85,
        'bones': 95,
        'energy': 70,
      },
      benefits: const [
        'Immunfunktion & Infektabwehr',
        'Stimmung & Antrieb',
        'Knochendichte & Kalziumstoffwechsel',
        'Entzündungsregulation',
        'Hormonbalance',
      ],
      warnings: const [
        'K2 nicht mit Blutverdünnern',
        'Bei Nierenerkrankungen vorsichtig',
        'Nicht ohne K2 hochdosieren',
      ],
      description: 'Vitamin D ist ein Hormon-Vorläufer, der über 200 Gene reguliert. '
          'K2 dirigiert Kalzium in die Knochen und schützt vor Gefäßverkalkung. '
          'Die Kombination ist essentiell für optimale Wirkung.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'b-komplex',
      name: 'Vitamin-B-Komplex (aktiviert)',
      category: 'Vitamine',
      dosage: '1 Kapsel (hochdosiert)',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.zap,
      color: const Color(0xFF10B981), // Grün
      effectScores: const {
        'energy': 90,
        'focus': 85,
        'stress': 80,
        'mood': 75,
      },
      benefits: const [
        'Energieproduktion (ATP)',
        'Neurotransmittersynthese',
        'Stressschutz & Nerven',
        'Hormonbalance',
        'Methylierung & Entgiftung',
      ],
      warnings: const [
        'Kann aktivierend wirken (nicht abends)',
        'B-Vitamin-Flush möglich (Hautröte)',
        'Bei Histaminintoleranz langsam einschleichen',
      ],
      description: 'Aktivierte B-Vitamine (P5P, Methyl-B12, 5-MTHF) steuern fast alle '
          'Schlüsselprozesse des Zellstoffwechsels. Essentiell für Energie, '
          'Nervensystem und Hormonbalance.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'vitamin-c-komplex',
      name: 'Vitamin C Komplex mit Bioflavonoiden',
      category: 'Vitamine',
      dosage: '250-500 mg',
      form: SupplementForm.powder,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.cherry,
      color: const Color(0xFFEF4444), // Rot
      effectScores: const {
        'immunity': 90,
        'skin': 85,
        'inflammation': 80,
        'energy': 65,
      },
      benefits: const [
        'Immunsystem & Infektabwehr',
        'Kollagenbildung',
        'Antioxidativer Schutz',
        'Entzündungshemmung',
        'Regeneration anderer Antioxidantien',
      ],
      warnings: const [
        'Bei >2000mg evtl. Durchfall',
        'Eisenpräparate zeitlich trennen',
        'Bei Nierensteinen vorsichtig',
      ],
      description: 'Essenzieller Zellschutzfaktor mit Bioflavonoiden für bessere '
          'Bioverfügbarkeit. Unterstützt Immunsystem, Kollagenbildung und '
          'regeneriert andere Antioxidantien.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    // ⚡ Zellenergie & Mitochondrienunterstützung
    
    Supplement(
      id: 'coenzym-q10',
      name: 'Coenzym Q10 (Ubiquinol)',
      category: 'Mitochondrien',
      dosage: '100-200 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.battery,
      color: const Color(0xFF8B5CF6), // Violett
      effectScores: const {
        'energy': 95,
        'heart': 90,
        'brain': 85,
        'antioxidant': 85,
      },
      benefits: const [
        'ATP-Produktion in Mitochondrien',
        'Herzgesundheit',
        'Neuroprotektiv',
        'Starkes Antioxidans',
        'Regeneriert Vitamin E',
      ],
      warnings: const [
        'Mit fettreicher Mahlzeit einnehmen',
        'Kann Blutdruck leicht senken',
        'Bei Statinen dringend empfohlen',
      ],
      description: 'Essentiell für die mitochondriale Atmungskette und ATP-Produktion. '
          'Besonders wichtig bei Erschöpfung, Herzproblemen oder Statin-Einnahme. '
          'Ubiquinol ist die besser bioverfügbare Form.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'r-alpha-liponsaeure',
      name: 'R-Alpha-Liponsäure (R-ALA)',
      category: 'Antioxidantien',
      dosage: '100-300 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.shieldCheck,
      color: const Color(0xFF059669), // Dunkelgrün
      effectScores: const {
        'detox': 90,
        'energy': 80,
        'bloodsugar': 85,
        'neuroprotection': 85,
      },
      benefits: const [
        'Universelles Antioxidans',
        'Schwermetall-Chelator',
        'Insulinsensitivität',
        'Mitochondrien-Support',
        'Regeneriert Vitamin C, E, Glutathion',
      ],
      warnings: const [
        'Nüchtern einnehmen',
        'Kann Blutzucker senken',
        'Bei Entgiftung langsam steigern',
      ],
      description: 'Vielseitiges Antioxidans, das sowohl wasser- als auch fettlöslich ist. '
          'Unterstützt Mitochondrien, Entgiftung und recycelt andere Antioxidantien. '
          'Die R-Form ist die bioaktive.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'omega-3',
      name: 'Omega-3-Komplex (EPA/DHA)',
      category: 'Fettsäuren',
      dosage: '1000-2000 mg EPA+DHA',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.withMeal,
      icon: LucideIcons.fish,
      color: const Color(0xFF0891B2), // Türkis
      effectScores: const {
        'inflammation': 95,
        'brain': 90,
        'heart': 90,
        'mood': 85,
      },
      benefits: const [
        'Entzündungsauflösung',
        'Gehirn- & Nervenschutz',
        'Herz-Kreislauf-Gesundheit',
        'Stimmungsstabilisierung',
        'Hormonbalance',
      ],
      warnings: const [
        'Mit Mahlzeit einnehmen',
        'Bei Blutverdünnern vorsichtig',
        'Auf Frische achten (kein Fischgeruch)',
      ],
      description: 'Essenzielle Fettsäuren für Zellmembranen und Entzündungsregulation. '
          'EPA wirkt entzündungshemmend, DHA ist wichtig für Gehirn und Nerven. '
          'Triglyzerid-Form bevorzugen.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    // 🌿 Mikrobiom & Stoffwechselbalance
    
    Supplement(
      id: 'gerstengras',
      name: 'Gerstengras (Pulver)',
      category: 'Superfoods',
      dosage: '3-5 g (1-2 TL)',
      form: SupplementForm.powder,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.leaf,
      color: const Color(0xFF65A30D), // Hellgrün
      effectScores: const {
        'detox': 85,
        'alkaline': 90,
        'microbiome': 80,
        'energy': 70,
      },
      benefits: const [
        'Reich an Chlorophyll',
        'Basische Unterstützung',
        'Präbiotische Fasern',
        'Mikronährstoffe',
        'Sanfte Entgiftung',
      ],
      warnings: const [
        'Langsam einschleichen',
        'Kann Eisenaufnahme hemmen',
        'Nicht erhitzen',
      ],
      description: 'Junges Gerstengras ohne Gluten, reich an Chlorophyll, Vitaminen '
          'und Mineralstoffen. Unterstützt Darmflora, Entsäuerung und sanfte '
          'Entgiftung.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'probiotikum',
      name: 'Probiotikum (Multispezies)',
      category: 'Mikrobiom',
      dosage: '5-20 Mrd. KBE',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.evening,
      icon: LucideIcons.gitBranch,
      color: const Color(0xFFA78BFA), // Lavendel
      effectScores: const {
        'digestion': 90,
        'immunity': 85,
        'mood': 75,
        'skin': 70,
      },
      benefits: const [
        'Darmflora-Aufbau',
        'Immunmodulation',
        'Darm-Hirn-Achse',
        'Schleimhautschutz',
        'Butyratbildung',
      ],
      warnings: const [
        'Kühl lagern',
        'Bei SIBO vorsichtig',
        'Nicht mit heißen Getränken',
      ],
      description: 'Multispezies-Probiotikum zur Wiederherstellung des mikrobiellen '
          'Gleichgewichts. Beeinflusst Verdauung, Immunsystem und sogar Stimmung '
          'über die Darm-Hirn-Achse.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    // 🔥 Block 2: Entzündungshemmung & Immunmodulation
    
    Supplement(
      id: 'kurkuma',
      name: 'Kurkuma (Pulver)',
      category: 'Pflanzenextrakte',
      dosage: '2-4 g (1 TL)',
      form: SupplementForm.powder,
      recommendedTiming: SupplementTiming.withMeal,
      icon: LucideIcons.flame,
      color: const Color(0xFFF97316), // Orange-Rot
      effectScores: const {
        'inflammation': 95,
        'liver': 85,
        'joints': 85,
        'brain': 80,
      },
      benefits: const [
        'Starke Entzündungshemmung',
        'Leberschutz',
        'Gelenkgesundheit',
        'Neuroprotektiv',
        'Antioxidativ',
      ],
      warnings: const [
        'Mit Pfeffer + Fett kombinieren',
        'Bei Gallensteinen vorsichtig',
        'Kann blutverdünnend wirken',
      ],
      description: 'Curcumin blockiert NF-κB und hemmt damit zentrale Entzündungskaskaden. '
          'Wirkt auf Gelenke, Leber, Gehirn und Darm. Immer mit Pfeffer und Fett '
          'für bessere Aufnahme.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'schwarzkuemmeloel',
      name: 'Schwarzkümmelöl',
      category: 'Öle',
      dosage: '1-2 TL',
      form: SupplementForm.liquid,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.droplet,
      color: const Color(0xFF1F2937), // Dunkelgrau
      effectScores: const {
        'allergy': 90,
        'inflammation': 85,
        'immunity': 85,
        'hormones': 75,
      },
      benefits: const [
        'Antihistaminisch',
        'Immunbalance',
        'Hautgesundheit',
        'Hormonmodulation',
        'Mastzellstabilisierung',
      ],
      warnings: const [
        'Nicht erhitzen',
        'In Schwangerschaft vorsichtig',
        'Kann Blutdruck senken',
      ],
      description: 'Reich an Thymoquinon, wirkt stark entzündungs- und allergiehemmend. '
          'Besonders bei Allergien, Hautproblemen und Autoimmunprozessen. '
          'Kaltgepresst verwenden.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'propolis',
      name: 'Propolis',
      category: 'Bienenprodukte',
      dosage: '10-30 Tropfen',
      form: SupplementForm.liquid,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.hexagon,
      color: const Color(0xFFD97706), // Bernstein
      effectScores: const {
        'immunity': 90,
        'inflammation': 85,
        'antimicrobial': 95,
        'mucosa': 85,
      },
      benefits: const [
        'Antimikrobiell & antiviral',
        'Schleimhautschutz',
        'Immunmodulation',
        'Entzündungshemmend',
        'Mastzellstabilisierend',
      ],
      warnings: const [
        'Bei Bienenallergie meiden',
        'Alkoholgehalt beachten',
        'Kann Mundschleimhaut reizen',
      ],
      description: 'Komplexes Bienenprodukt mit starker antimikrobieller und '
          'immunmodulierender Wirkung. Besonders bei Infektanfälligkeit '
          'und Schleimhautproblemen.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'mariendistel',
      name: 'Mariendistel-Komplex',
      category: 'Leberschutz',
      dosage: '200-400 mg Silymarin',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.flower2,
      color: const Color(0xFF7C3AED), // Lila
      effectScores: const {
        'liver': 95,
        'detox': 90,
        'hormones': 80,
        'skin': 75,
      },
      benefits: const [
        'Leberzellschutz',
        'Entgiftung Phase I+II',
        'Hormonabbau',
        'Gallensaftproduktion',
        'Regeneration',
      ],
      warnings: const [
        'Bei Korbblütlerallergie meiden',
        'Kann leicht abführend wirken',
        'Bei Gallensteinen vorsichtig',
      ],
      description: 'Silymarin stabilisiert Leberzellmembranen und fördert Regeneration. '
          'Unterstützt Entgiftung, Hormonabbau und Fettstoffwechsel. '
          'Ideal bei Leberbelastung.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'ginkgo',
      name: 'Ginkgo biloba',
      category: 'Nootropika',
      dosage: '120-240 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.brain,
      color: const Color(0xFF16A34A), // Grün
      effectScores: const {
        'circulation': 90,
        'focus': 85,
        'memory': 85,
        'neuroprotection': 80,
      },
      benefits: const [
        'Mikrozirkulation',
        'Konzentration & Gedächtnis',
        'Neuroprotektiv',
        'Antioxidativ',
        'Stimmungsstabilisierend',
      ],
      warnings: const [
        'Nicht mit Blutverdünnern',
        'Kann wach halten',
        'Wirkung erst nach Wochen',
      ],
      description: 'Verbessert die Durchblutung im Gehirn und schützt Nervenzellen. '
          'Fördert kognitive Leistung besonders bei Durchblutungsstörungen. '
          'Standardisiert auf Flavonglykoside und Terpenlactone.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    // 🧠 Block 3: Nervensystem & Stressachsen
    // 🔋 Stark aktivierend
    
    Supplement(
      id: 'l-tyrosin',
      name: 'L-Tyrosin',
      category: 'Aminosäuren',
      dosage: '500-1000 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.rocket,
      color: const Color(0xFFDC2626), // Rot
      effectScores: const {
        'focus': 95,
        'energy': 90,
        'stress': 85,
        'mood': 80,
      },
      benefits: const [
        'Dopamin-Vorstufe',
        'Mentale Energie',
        'Stressresistenz',
        'Schilddrüsenhormone',
        'Konzentration',
      ],
      warnings: const [
        'Nicht abends (aktivierend)',
        'Bei Schilddrüsenüberfunktion meiden',
        'Kann Unruhe verursachen',
      ],
      description: 'Direkte Vorstufe von Dopamin, Noradrenalin und Adrenalin. '
          'Unterstützt mentale Leistung und Motivation besonders unter Stress. '
          'Morgens nüchtern einnehmen.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'dlpa',
      name: 'DL-Phenylalanin (DLPA)',
      category: 'Aminosäuren',
      dosage: '500-1000 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.sparkles,
      color: const Color(0xFFEA580C), // Orange-Rot
      effectScores: const {
        'mood': 90,
        'motivation': 95,
        'pain': 80,
        'focus': 85,
      },
      benefits: const [
        'Dopamin & Endorphine',
        'Motivationssteigerung',
        'Schmerzmodulation',
        'Emotionale Stabilität',
        'Antriebsfördernd',
      ],
      warnings: const [
        'Nicht mit MAO-Hemmern',
        'Kann Unruhe verursachen',
        'Nicht abends einnehmen',
      ],
      description: 'Kombination aus L- und D-Form. L-Form fördert Dopamin, '
          'D-Form hemmt Endorphinabbau. Wirkt motivierend und '
          'stimmungsstabilisierend.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'rhodiola',
      name: 'Rhodiola Rosea',
      category: 'Adaptogene',
      dosage: '200-400 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.mountain,
      color: const Color(0xFFDB2777), // Pink
      effectScores: const {
        'stress': 90,
        'energy': 85,
        'mood': 85,
        'focus': 80,
      },
      benefits: const [
        'Stressresistenz',
        'Mentale Energie',
        'Cortisolregulation',
        'Stimmungsaufhellung',
        'Leistungssteigerung',
      ],
      warnings: const [
        'Nicht abends',
        'Nicht mit SSRI',
        'Bei Nervosität vorsichtig',
      ],
      description: 'Adaptogen das Energie erhöht und gleichzeitig Stress dämpft. '
          'Senkt Cortisol, stabilisiert Stimmung. Standardisiert auf '
          'Rosavine und Salidroside.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'roter-ginseng',
      name: 'Roter Ginseng',
      category: 'Adaptogene',
      dosage: '200-400 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.flame,
      color: const Color(0xFFB91C1C), // Dunkelrot
      effectScores: const {
        'energy': 90,
        'vitality': 95,
        'immunity': 85,
        'libido': 80,
      },
      benefits: const [
        'Vitalität & Energie',
        'Immunmodulation',
        'Libidosteigerung',
        'Stressresistenz',
        'Mitochondrien-Aktivierung',
      ],
      warnings: const [
        'Nicht abends',
        'Bei Bluthochdruck vorsichtig',
        'Kann überstimulieren',
      ],
      description: 'Klassisches Adaptogen für körperliche und geistige Energie. '
          'Wirkt vitalisierend, immunstärkend und leicht libidosteigernd. '
          'Gedämpfter Ginseng mit Ginsenosiden.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    // ⚖️ Ausgleichend / regulierend
    
    Supplement(
      id: '5-htp',
      name: '5-HTP',
      category: 'Aminosäuren',
      dosage: '100-200 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.evening,
      icon: LucideIcons.smile,
      color: const Color(0xFF6366F1), // Indigo
      effectScores: const {
        'mood': 90,
        'sleep': 85,
        'anxiety': 80,
        'appetite': 75,
      },
      benefits: const [
        'Serotonin-Vorstufe',
        'Stimmungsaufhellung',
        'Schlafverbesserung',
        'Emotionale Balance',
        'Appetitkontrolle',
      ],
      warnings: const [
        'Nicht mit SSRI/MAO-Hemmern',
        'Kann Übelkeit verursachen',
        'B6 als Cofaktor wichtig',
      ],
      description: 'Direkte Vorstufe von Serotonin. Wirkt stimmungsaufhellend, '
          'schlaffördernd und emotional ausgleichend. Aus Griffonia '
          'simplicifolia gewonnen.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'hericium',
      name: 'Hericium erinaceus (Löwenmähne)',
      category: 'Vitalpilze',
      dosage: '500-1500 mg',
      form: SupplementForm.powder,
      recommendedTiming: SupplementTiming.morning,
      icon: LucideIcons.cloud,
      color: const Color(0xFF9333EA), // Violett
      effectScores: const {
        'neuroplasticity': 95,
        'mood': 80,
        'focus': 85,
        'gut': 85,
      },
      benefits: const [
        'Nervenwachstumsfaktor (NGF)',
        'Neuroregeneration',
        'Darm-Hirn-Achse',
        'Langfristige Balance',
        'Schleimhautregeneration',
      ],
      warnings: const [
        'Wirkung erst nach Wochen',
        'Bei Histaminintoleranz vorsichtig',
        'Qualität entscheidend',
      ],
      description: 'Einzigartiger Vitalpilz mit neuroregenerativen Eigenschaften. '
          'Stimuliert NGF-Bildung und unterstützt langfristige Nervenregeneration. '
          'Wirkt auf ZNS und Darm-Hirn-Achse.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'l-theanin',
      name: 'L-Theanin (Grüntee-Extrakt)',
      category: 'Aminosäuren',
      dosage: '100-400 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.anytime,
      icon: LucideIcons.coffee,
      color: const Color(0xFF059669), // Grün
      effectScores: const {
        'relaxation': 90,
        'focus': 85,
        'anxiety': 85,
        'sleep': 75,
      },
      benefits: const [
        'Entspannte Wachheit',
        'Alpha-Wellen',
        'Angstlösung',
        'Fokus ohne Nervosität',
        'Reizfilterung',
      ],
      warnings: const [
        'Keine bekannten Nebenwirkungen',
        'Kann mit Koffein kombiniert werden',
        'Sehr gut verträglich',
      ],
      description: 'Aminosäure aus Grüntee, die GABA, Dopamin und Serotonin erhöht. '
          'Erzeugt entspannte Wachheit und Alpha-Gehirnwellen. Ideal bei '
          'Stress und Reizüberflutung.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    // 🌙 Beruhigend / sedierend
    
    Supplement(
      id: 'gaba-600',
      name: 'GABA 600',
      category: 'Neurotransmitter',
      dosage: '600 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.beforeBed,
      icon: LucideIcons.moon,
      color: const Color(0xFF4C1D95), // Dunkelviolett
      effectScores: const {
        'relaxation': 95,
        'sleep': 90,
        'anxiety': 90,
        'muscle': 80,
      },
      benefits: const [
        'Tiefe Entspannung',
        'Einschlafhilfe',
        'Angstlösung',
        'Muskelentspannung',
        'Parasympathikus-Aktivierung',
      ],
      warnings: const [
        'Kann müde machen',
        'Nicht mit Sedativa',
        'Nicht tagsüber bei Aktivität',
      ],
      description: 'Haupthemmender Neurotransmitter im ZNS. Reguliert neuronale '
          'Übererregung und sorgt für Entspannung. Hochdosiert für '
          'spürbare Wirkung.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'baldrian',
      name: 'Baldrian-Extrakt',
      category: 'Pflanzenextrakte',
      dosage: '300-600 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.beforeBed,
      icon: LucideIcons.flower,
      color: const Color(0xFF581C87), // Lila
      effectScores: const {
        'sleep': 90,
        'relaxation': 85,
        'anxiety': 80,
        'muscle': 75,
      },
      benefits: const [
        'Einschlafhilfe',
        'GABA-Modulation',
        'Nervöse Unruhe',
        'Muskelverspannungen',
        'Vegetative Stabilisierung',
      ],
      warnings: const [
        'Kann Trägheit verursachen',
        'Nicht mit anderen Sedativa',
        'Wirkung erst nach Tagen',
      ],
      description: 'Bewährtes pflanzliches Sedativum. Hemmt GABA-Abbau und '
          'fördert Adenosin. Besonders bei nervöser Unruhe und '
          'Einschlafproblemen. Standardisiert auf Valerensäuren.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
    
    Supplement(
      id: 'ashwagandha',
      name: 'Ashwagandha',
      category: 'Adaptogene',
      dosage: '300-600 mg',
      form: SupplementForm.capsule,
      recommendedTiming: SupplementTiming.evening,
      icon: LucideIcons.shield,
      color: const Color(0xFF92400E), // Braun
      effectScores: const {
        'stress': 95,
        'sleep': 85,
        'anxiety': 85,
        'hormones': 80,
      },
      benefits: const [
        'Cortisolsenkung',
        'Schlafqualität',
        'Angstregulation',
        'Stressresilienz',
        'Hormonbalance',
      ],
      warnings: const [
        'Kann Blutdruck senken',
        'Bei Schilddrüsenüberfunktion vorsichtig',
        'Langsame Wirkung',
      ],
      description: 'Klassisches Adaptogen aus dem Ayurveda. Senkt Cortisol, '
          'beruhigt die HPA-Achse und verbessert Schlafqualität. '
          'KSM-66 oder Sensoril mit 5% Withanoliden.',
      isActive: true,
      createdAt: DateTime.now(),
    ),
  ];

  /// Get all supplements from the database
  static List<Supplement> getAllSupplements() {
    return List.unmodifiable(defaultSupplements);
  }

  /// Get supplements by category
  static List<Supplement> getSupplementsByCategory(String category) {
    return defaultSupplements
        .where((s) => s.category.toLowerCase() == category.toLowerCase())
        .toList();
  }

  /// Get supplements by timing
  static List<Supplement> getSupplementsByTiming(SupplementTiming timing) {
    return defaultSupplements
        .where((s) => s.recommendedTiming == timing)
        .toList();
  }

  /// Get supplement by ID
  static Supplement? getSupplementById(String id) {
    try {
      return defaultSupplements.firstWhere((s) => s.id == id);
    } catch (_) {
      return null;
    }
  }

  /// Get supplements that can be taken at a specific time
  static List<Supplement> getSupplementsForTimeOfDay(TimeOfDay time) {
    return defaultSupplements
        .where((s) => s.canBeTakenAt(time))
        .toList();
  }

  /// Get supplements with specific effect
  static List<Supplement> getSupplementsByEffect(String effect, {int minScore = 70}) {
    return defaultSupplements.where((s) {
      final score = s.effectScores[effect.toLowerCase()];
      return score != null && score >= minScore;
    }).toList()
      ..sort((a, b) {
        final scoreA = a.effectScores[effect.toLowerCase()] ?? 0;
        final scoreB = b.effectScores[effect.toLowerCase()] ?? 0;
        return scoreB.compareTo(scoreA);
      });
  }

  /// Get recommended supplement combinations
  static Map<String, List<String>> getSupplementCombinations() {
    return {
      'magnesium-citrat': ['vitamin-d3-k2', 'b-komplex', 'gaba-600', 'l-theanin'],
      'zink-bisglycinat': ['vitamin-c-komplex', 'vitamin-d3-k2', 'probiotikum'],
      'vitamin-d3-k2': ['magnesium-citrat', 'omega-3', 'zink-bisglycinat'],
      'b-komplex': ['magnesium-citrat', 'omega-3', 'coenzym-q10'],
      'vitamin-c-komplex': ['zink-bisglycinat', 'propolis', 'schwarzkuemmeloel'],
      'coenzym-q10': ['r-alpha-liponsaeure', 'b-komplex', 'omega-3'],
      'r-alpha-liponsaeure': ['coenzym-q10', 'mariendistel', 'vitamin-c-komplex'],
      'omega-3': ['vitamin-d3-k2', 'kurkuma', 'ginkgo'],
      'gerstengras': ['probiotikum', 'hericium', 'omega-3'],
      'probiotikum': ['gerstengras', 'kurkuma', 'hericium'],
      'kurkuma': ['omega-3', 'schwarzkuemmeloel', 'mariendistel'],
      'schwarzkuemmeloel': ['kurkuma', 'propolis', 'vitamin-c-komplex'],
      'propolis': ['schwarzkuemmeloel', 'vitamin-c-komplex', 'zink-bisglycinat'],
      'mariendistel': ['r-alpha-liponsaeure', 'kurkuma', 'gerstengras'],
      'ginkgo': ['omega-3', 'b-komplex', 'rhodiola'],
      'l-tyrosin': ['b-komplex', 'vitamin-c-komplex', 'rhodiola'],
      'dlpa': ['b-komplex', 'vitamin-c-komplex', 'magnesium-citrat'],
      'rhodiola': ['l-tyrosin', 'b-komplex', 'ginkgo'],
      'roter-ginseng': ['rhodiola', 'coenzym-q10', 'b-komplex'],
      '5-htp': ['magnesium-citrat', 'b-komplex', 'l-theanin'],
      'hericium': ['omega-3', 'gerstengras', 'rhodiola'],
      'l-theanin': ['magnesium-citrat', '5-htp', 'gaba-600'],
      'gaba-600': ['magnesium-citrat', 'l-theanin', 'baldrian'],
      'baldrian': ['gaba-600', 'magnesium-citrat', 'ashwagandha'],
      'ashwagandha': ['magnesium-citrat', 'l-theanin', 'baldrian'],
    };
  }

  /// Get supplements that should not be combined
  static Map<String, List<String>> getSupplementConflicts() {
    return {
      'zink-bisglycinat': ['eisen', 'calcium', 'magnesium-citrat'],
      'calcium': ['zink-bisglycinat', 'eisen', 'magnesium-citrat'],
      'eisen': ['zink-bisglycinat', 'calcium', 'vitamin-c-komplex', 'gerstengras'],
      '5-htp': ['l-tyrosin', 'dlpa'], // Serotonin vs Dopamin
      'l-tyrosin': ['5-htp', 'ashwagandha'], // Aktivierend vs beruhigend
      'dlpa': ['5-htp', 'ashwagandha'],
      'gaba-600': ['l-tyrosin', 'dlpa', 'roter-ginseng'], // Sedierend vs aktivierend
      'baldrian': ['l-tyrosin', 'dlpa', 'rhodiola', 'roter-ginseng'],
      'ashwagandha': ['l-tyrosin', 'dlpa'], // Kann bei manchen aktivierend wirken
    };
  }

  /// Get all unique categories
  static List<String> getCategories() {
    return defaultSupplements
        .map((s) => s.category)
        .toSet()
        .toList()
      ..sort();
  }

  /// Get all unique effects
  static List<String> getAllEffects() {
    final effects = <String>{};
    for (final supplement in defaultSupplements) {
      effects.addAll(supplement.effectScores.keys);
    }
    return effects.toList()..sort();
  }

  /// Get supplement recommendations based on symptoms/goals
  static List<Supplement> getRecommendations({
    List<String>? symptoms,
    List<String>? goals,
    TimeOfDay? timeOfDay,
  }) {
    final recommendations = <Supplement>[];
    
    // Map symptoms/goals to effects
    final effectMap = {
      'müdigkeit': ['energy', 'focus'],
      'stress': ['stress', 'relaxation', 'anxiety'],
      'schlafprobleme': ['sleep', 'relaxation'],
      'immunschwäche': ['immunity', 'inflammation'],
      'konzentration': ['focus', 'brain', 'memory'],
      'stimmung': ['mood', 'anxiety', 'stress'],
      'entzündung': ['inflammation', 'joints'],
      'verdauung': ['digestion', 'microbiome'],
    };
    
    final desiredEffects = <String>{};
    
    // Add effects based on symptoms
    symptoms?.forEach((symptom) {
      final effects = effectMap[symptom.toLowerCase()];
      if (effects != null) {
        desiredEffects.addAll(effects);
      }
    });
    
    // Add effects based on goals
    goals?.forEach((goal) {
      final effects = effectMap[goal.toLowerCase()];
      if (effects != null) {
        desiredEffects.addAll(effects);
      }
    });
    
    // Find supplements with desired effects
    for (final effect in desiredEffects) {
      recommendations.addAll(getSupplementsByEffect(effect));
    }
    
    // Filter by time if provided
    if (timeOfDay != null) {
      recommendations.removeWhere((s) => !s.canBeTakenAt(timeOfDay));
    }
    
    // Remove duplicates and return
    final uniqueIds = <String>{};
    return recommendations.where((s) => uniqueIds.add(s.id)).toList();
  }
}