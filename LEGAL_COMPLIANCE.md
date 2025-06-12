🛡️ LEGAL_COMPLIANCE.md - Sicherheit, Ethik & Rechtliche Richtlinien
🎯 Unsere Mission
Everyday Sunday stellt das Wohlbefinden und die Sicherheit der Nutzer über alles andere. Wir bauen eine App, die Menschen befähigt, nicht abhängig macht. Eine App, die transparent informiert, nicht manipuliert. Eine App, die dem Nutzer dient, nicht umgekehrt.

🧭 Ethische Grundprinzipien
1. 👤 User-Zentriert, aber nicht manipulierend
✅ Transparenz > Engagement
✅ Ehrliche Kommunikation > Marketing-Sprech  
✅ User-Kontrolle > App-Kontrolle
✅ Klare Grenzen > Vage Versprechen

❌ KEINE Dark Patterns
❌ KEINE Manipulation
❌ KEINE künstliche Abhängigkeit
❌ KEINE versteckten Intentionen
2. 🔒 Verantwortungsvoll mit Gesundheitsdaten
dartclass DataPrivacyPrinciples {
  // Datenminimierung
  static const rules = [
    "Nur sammeln, was wirklich nötig ist",
    "Lokal speichern wo immer möglich",
    "Explizite Zustimmung für jeden Datenpunkt",
    "Jederzeit löschbar durch User",
    "Keine Weitergabe an Dritte",
  ];
  
  // Transparenz
  Widget buildDataUsageInfo() {
    return Card(
      child: Column(
        children: [
          Text("Diese Daten speichern wir:"),
          Text("✓ Lokal: Alles"),
          Text("✓ Server: Nichts (aktuell)"),
          ElevatedButton(
            onPressed: deleteAllData,
            child: Text("Alle Daten löschen"),
          ),
        ],
      ),
    );
  }
}
3. 📚 Informierte Entscheidungen statt Versprechen
dart// ❌ FALSCH: Versprechen
"Ashwagandha wird deinen Stress eliminieren!"

// ✅ RICHTIG: Information
"Ashwagandha: Was sagt die Wissenschaft?
- 3 Studien zeigen mögliche Vorteile bei Stress
- Individuelle Wirkung kann variieren
- Quellen: [Links zu Studien]
- Besprich es mit deinem Arzt"
4. 🏥 Klare Trennung von App und medizinischem Anspruch
dartclass MedicalDisclaimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade50,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Icon(Icons.info_outline, size: 40),
          Text(
            "Everyday Sunday ist KEIN:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("• Medizinprodukt"),
          Text("• Ersatz für ärztliche Beratung"),
          Text("• Diagnose-Tool"),
          Text("• Therapie"),
          SizedBox(height: 16),
          Text(
            "Everyday Sunday IST:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("• Ein Wellness-Tracker"),
          Text("• Ein Organisationstool"),
          Text("• Eine Informationsquelle"),
          Text("• Ein persönliches Tagebuch"),
        ],
      ),
    );
  }
}
5. 💪 Empowerment statt Abhängigkeit
dartclass EmpowermentFeatures {
  // Bildung statt Bevormundung
  static Widget buildEducationalContent(Supplement supplement) {
    return ExpansionTile(
      title: Text("Verstehe ${supplement.name}"),
      children: [
        Text("Was ist das?"),
        Text("Wie funktioniert es im Körper?"),
        Text("Natürliche Quellen"),
        Text("Mögliche Wechselwirkungen"),
        ElevatedButton(
          onPressed: () => launchUrl("pubmed.com/..."),
          child: Text("Wissenschaftliche Quellen"),
        ),
      ],
    );
  }
  
  // Ziel: User unabhängig machen
  static Widget buildProgressTracking() {
    return Card(
      child: Text(
        "Super! Du trackst seit 30 Tagen selbstständig. "
        "Die App hat dir geholfen, Routinen zu entwickeln. "
        "Du brauchst uns immer weniger - das ist unser Ziel! 🎉"
      ),
    );
  }
}
6. 🤖 KI als Partner, nicht als Autorität
dartclass AICompanion {
  String generateResponse(String userInput) {
    return """
    Basierend auf deinen Angaben könnte ich mir vorstellen, dass...
    
    Meine Überlegungen:
    • [Transparente Erklärung der Analyse]
    • [Quellen und Unsicherheiten]
    
    Was denkst du? Macht das für dich Sinn?
    
    Denk daran: Ich bin nur ein Algorithmus. 
    Du kennst deinen Körper am besten.
    """;
  }
}

⚖️ Rechtliche Compliance
🇪🇺 EU/Deutschland Spezifisch
Gesetzliche Rahmenbedingungen

HWG (Heilmittelwerbegesetz)

Keine Heilversprechen
Keine Werbung mit Krankengeschichten
Wissenschaftliche Belege für Claims


NemV (Nahrungsergänzungsmittelverordnung)

Nur zugelassene Health Claims
Warnhinweise bei Überdosierung
Nicht als Ersatz für ausgewogene Ernährung


DSGVO/GDPR

Privacy by Design
Datenminimierung
Recht auf Löschung
Explizite Einwilligung


MDR (Medical Device Regulation)

Wir sind KEIN Medizinprodukt
Keine diagnostischen Funktionen
Keine therapeutischen Claims



📝 Pflicht-Texte & Screens
1. Erster App-Start
dartclass WelcomeScreen extends StatelessWidget {
  final List<WelcomeStep> steps = [
    WelcomeStep(
      title: "Willkommen bei Everyday Sunday",
      content: "Dein persönlicher Wellness-Begleiter",
      icon: Icons.favorite,
    ),
    WelcomeStep(
      title: "Was wir sind",
      content: "✓ Supplement-Organizer\n"
               "✓ Stimmungstagebuch\n"
               "✓ Informationsquelle\n"
               "✓ Dein persönlicher Assistent",
      icon: Icons.check_circle,
    ),
    WelcomeStep(
      title: "Was wir NICHT sind",
      content: "✗ Kein Arzt-Ersatz\n"
               "✗ Kein Medizinprodukt\n"
               "✗ Keine Diagnose-Tool\n"
               "✗ Keine Heilversprechen",
      icon: Icons.warning,
    ),
    WelcomeStep(
      title: "Deine Daten = Deine Kontrolle",
      content: "• Alles lokal gespeichert\n"
               "• Keine Weitergabe\n"
               "• Jederzeit löschbar\n"
               "• Du hast die Kontrolle",
      icon: Icons.lock,
    ),
  ];
}
2. Bei jeder Empfehlung
dartWidget buildRecommendationCard(Recommendation rec) {
  return Card(
    child: Column(
      children: [
        // Hauptinhalt
        SupplementInfo(rec.supplement),
        
        // IMMER Disclaimer
        Container(
          color: Colors.blue.shade50,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(Icons.info_outline, size: 16),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  "Basiert auf deinen Angaben. "
                  "Besprich Supplements mit deinem Arzt.",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        
        // Transparenz-Button
        TextButton(
          onPressed: () => showExplanationDialog(rec),
          child: Text("Warum diese Empfehlung?"),
        ),
      ],
    ),
  );
}
3. Impressum & Legal (Settings)
dartclass LegalSection {
  static List<LegalPage> pages = [
    LegalPage(
      title: "Impressum",
      content: "[Vollständiges Impressum nach §5 TMG]",
      required: true,
    ),
    LegalPage(
      title: "Datenschutzerklärung", 
      content: "[DSGVO-konforme Datenschutzerklärung]",
      required: true,
    ),
    LegalPage(
      title: "Nutzungsbedingungen",
      content: "[AGB mit Haftungsausschluss]",
      required: true,
    ),
    LegalPage(
      title: "Medizinischer Hinweis",
      content: """
      Everyday Sunday ersetzt keine ärztliche Beratung.
      Bei gesundheitlichen Beschwerden suche einen Arzt auf.
      Supplements können Wechselwirkungen haben.
      """,
      required: true,
    ),
  ];
}

🛠️ Technische Implementierung
1. Age Gate (Pflicht!)
dartclass AgeVerification {
  static Future<bool> verify() async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text("Altersverifikation"),
        content: Text(
          "Everyday Sunday ist für Personen ab 18 Jahren.\n"
          "Supplements sollten nur von Erwachsenen "
          "eigenverantwortlich eingenommen werden."
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text("Ich bin unter 18"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text("Ich bin 18 oder älter"),
          ),
        ],
      ),
    );
    
    if (result != true) {
      // App beenden
      SystemNavigator.pop();
    }
    
    return result ?? false;
  }
}
2. Consent Management
dartclass ConsentManager {
  static Map<String, bool> requiredConsents = {
    'terms_accepted': false,
    'privacy_accepted': false,
    'medical_disclaimer_accepted': false,
    'age_verified': false,
  };
  
  static Future<bool> checkAllConsents() async {
    for (var consent in requiredConsents.entries) {
      final accepted = await SharedPreferences.getBool(consent.key) ?? false;
      if (!accepted) return false;
    }
    return true;
  }
  
  static Widget buildConsentScreen() {
    return ConsentFlow(
      steps: [
        ConsentStep.terms(),
        ConsentStep.privacy(),
        ConsentStep.medical(),
        ConsentStep.age(),
      ],
      onComplete: () => Navigator.pushReplacement(HomeScreen()),
    );
  }
}
3. Transparenz-Features
dartclass TransparencyFeatures {
  // Zeige warum eine Empfehlung gemacht wurde
  static Widget buildRecommendationExplanation(Recommendation rec) {
    return Dialog(
      child: Column(
        children: [
          Text("Warum ${rec.supplement.name}?"),
          Divider(),
          Text("Deine Eingaben:"),
          ...rec.contextTags.map((tag) => Chip(label: Text(tag))),
          Text("Unsere Analyse:"),
          ...rec.reasons.map((reason) => ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text(reason),
          )),
          Text("Wissenschaftliche Basis:"),
          ...rec.sources.map((source) => InkWell(
            onTap: () => launchUrl(source.url),
            child: Text(source.title, style: TextStyle(color: Colors.blue)),
          )),
        ],
      ),
    );
  }
  
  // Daten-Transparenz
  static Widget buildDataOverview() {
    return DataDashboard(
      sections: [
        DataSection(
          title: "Gespeicherte Daten",
          items: getUserDataSummary(),
          action: "Alle anzeigen",
        ),
        DataSection(
          title: "Datennutzung", 
          items: getDataUsage(),
          action: "Details",
        ),
        DataSection(
          title: "Deine Rechte",
          items: getUserRights(),
          action: "Ausüben",
        ),
      ],
    );
  }
}
4. Safety Features
dartclass SafetyFeatures {
  // Warnungen bei hohen Dosierungen
  static bool checkDosageSafety(Supplement supplement, double dose) {
    if (dose > supplement.maxSafeDose) {
      showWarningDialog(
        "Die eingegebene Dosis überschreitet die "
        "übliche Tagesdosis. Bitte prüfe deine Eingabe "
        "und konsultiere bei Unsicherheit einen Arzt."
      );
      return false;
    }
    return true;
  }
  
  // Interaktions-Warnung (allgemein, nicht spezifisch)
  static Widget buildInteractionWarning() {
    return Card(
      color: Colors.orange.shade50,
      child: ListTile(
        leading: Icon(Icons.warning, color: Colors.orange),
        title: Text("Wichtiger Hinweis"),
        subtitle: Text(
          "Supplements können Wechselwirkungen mit "
          "Medikamenten haben. Informiere deinen Arzt "
          "über alle Supplements, die du nimmst."
        ),
      ),
    );
  }
}

📱 User Interface Guidelines
Sprache & Ton
✅ "Könnte unterstützen"      ❌ "Hilft gegen"
✅ "Viele berichten"          ❌ "Wissenschaftlich bewiesen"  
✅ "Mögliche Option"          ❌ "Du musst"
✅ "Überlege ob"              ❌ "Nimm unbedingt"
✅ "Traditionell genutzt"     ❌ "Heilt"
Visuelle Hierarchie

Information first
Disclaimer prominent
CTA dezent
Werbung nie

Error Messages
dart// User-freundlich und hilfreich
class UserFriendlyErrors {
  static String getErrorMessage(Error error) {
    switch (error.type) {
      case ErrorType.network:
        return "Keine Internetverbindung. "
               "Deine Daten sind sicher lokal gespeichert.";
      
      case ErrorType.invalid_input:
        return "Diese Eingabe kann ich nicht verstehen. "
               "Versuch es anders zu formulieren.";
               
      case ErrorType.ai_uncertain:
        return "Ich bin mir nicht sicher genug für eine Empfehlung. "
               "Vielleicht kannst du mir mehr Details geben?";
    }
  }
}

🚀 Launch-Checkliste
Vor Beta Launch

 Alle Disclaimers implementiert
 Age Gate funktioniert
 Consent Flow vollständig
 Daten-Export möglich
 Löschfunktion getestet

Vor Public Launch

 Rechtliche Prüfung durch Anwalt
 Alle Texte DSGVO-konform
 Impressum vollständig
 Support-Kontakt eingerichtet
 Notfall-Abschaltung möglich

App Store Compliance

 Keine medizinischen Claims in Description
 Age Rating korrekt (17+)
 Privacy Policy URL aktiv
 Support URL aktiv
 Screenshots ohne Heilversprechen


💡 Leitsätze für Entwicklung
Der Everyday Sunday Kodex

"User First, Always" - Jede Entscheidung zum Wohl des Nutzers
"Transparency Builds Trust" - Erkläre was, warum und wie
"Empower, Don't Control" - Befähige statt zu bevormunden
"Safety Over Features" - Sicherheit vor coolen Features
"Honest Communication" - Ehrlich währt am längsten
"Privacy by Design" - Datenschutz von Anfang an
"Accessible for All" - Niemand wird ausgeschlossen

Im Zweifel
if (unsicher) {
  // 1. Frage: Dient es dem User?
  // 2. Frage: Ist es sicher?
  // 3. Frage: Ist es ehrlich?
  // 4. Frage: Würde ich es meiner Oma empfehlen?
  
  if (anyFalse) {
    return NICHT_IMPLEMENTIEREN;
  }
}

🔄 Review & Updates
Regelmäßige Reviews

Wöchentlich: Neue Features auf Compliance prüfen
Monatlich: User Feedback zu Verständlichkeit
Quartalsweise: Rechtliche Änderungen checken
Jährlich: Vollständiges Legal Review

Bei Problemen

Feature sofort deaktivieren
User transparent informieren
Fix implementieren
Lessons learned dokumentieren


🎯 Das ultimative Ziel

"Eine App die so gut ist, dass sie sich selbst überflüssig macht."

Wenn unsere User durch Everyday Sunday gelernt haben, ihre Supplements selbstständig und informiert zu managen, haben wir unser Ziel erreicht.
Success = User braucht uns nicht mehr, empfiehlt uns aber weiter!

Version: 1.0
Letzte Aktualisierung: [DATUM]
Legal Review: Ausstehend
Ethik Review: ✅ Abgeschlossen
Nächstes Review: [DATUM + 1 Monat]
Maintainer: Das gesamte Team - weil User Safety uns alle angeht!

⚠️ Finale Erinnerung
Diese Guidelines sind unsere DNA. Sie sind nicht verhandelbar.
Bei Konflikten zwischen:

Feature vs. Safety → Safety wins
Profit vs. Privacy → Privacy wins
Engagement vs. Honesty → Honesty wins
Komplexität vs. Klarheit → Klarheit wins

Everyday Sunday: Wo das Wohlbefinden des Users IMMER an erster Stelle steht. 🌟