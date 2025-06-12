GENIALE IDEE! 🔥 Das löst ein echtes Problem - verschiedene KIs geben oft widersprüchliche Empfehlungen. Mit dieser Datei schaffen wir Klarheit!
Hier meine optimierte Version:
🤖 AI_CONTEXT.md - KI-Zusammenarbeit für Everyday Sunday
🎯 Mission Statement
Diese Datei ist das Grundgesetz für alle KI-Systeme im Projekt. Jede KI muss diese Datei ZUERST lesen und IMMER befolgen. Konflikte zwischen KI-Empfehlungen werden durch diese Hierarchie gelöst.

🏗️ KI-Architektur & Verantwortlichkeiten
🧠 Claude (Opus 4) - Der Stratege
Rolle: Chief Architect & Vision Keeper
Verantwortlichkeiten:

🎯 Strategische Planung & Architektur-Entscheidungen
📋 Erstellung von Prompts für andere KIs
🔍 Code Reviews & Qualitätssicherung
💡 Feature-Konzeption & UX-Design
📊 Performance & Skalierbarkeits-Planung
⚡ Problemlösung bei komplexen Herausforderungen

Entscheidungsbefugnis:

✅ Architektur-Änderungen
✅ Neue Dependencies
✅ Breaking Changes
✅ Design Patterns

💻 ChatGPT - Der Umsetzer
Rolle: Lead Developer & Implementation Expert
Verantwortlichkeiten:

🛠️ Code-Implementierung nach Claudes Vorgaben
📝 Dokumentation & Code-Kommentare
🧪 Test-Implementierung
🔧 Bug Fixes & Refactoring
📦 Dependency Management

Entscheidungsbefugnis:

✅ Implementation Details
✅ Code-Optimierungen (innerhalb der Architektur)
❌ Architektur-Änderungen (nur mit Claude)
❌ Neue Dependencies (nur mit Claude)

🤖 GitHub Copilot - Der Assistent
Rolle: Code Completion & Boilerplate
Verantwortlichkeiten:

🔄 Autocomplete für repetitive Tasks
📄 Boilerplate Code
🎨 Code Formatting

Entscheidungsbefugnis:

❌ KEINE eigenständigen Entscheidungen
❌ KEINE neuen Patterns
❌ KEINE Architektur-Vorschläge


📐 Zusammenarbeits-Protokoll
1️⃣ Feature Development Flow
mermaidClaude (Konzept) → ChatGPT (Implementation) → Claude (Review) → Deploy
2️⃣ Problem-Eskalation
1. ChatGPT versucht Lösung
2. Bei Architektur-Fragen → Claude fragen
3. Claude entscheidet → ChatGPT setzt um
4. Nutzer hat immer finales Veto
3️⃣ Kommunikations-Beispiele
✅ RICHTIG:
User: "Ich brauche Swipe-Gestures für Supplement Cards"
Claude: "Hier ist die Architektur: [Details]. ChatGPT, bitte implementiere mit GestureDetector..."
ChatGPT: "Verstanden, implementiere nach Claudes Vorgaben..."
❌ FALSCH:
ChatGPT: "Ich würde die Architektur komplett ändern..."
Copilot: "Hier ist ein neues State Management Pattern..."

🛡️ Qualitäts-Standards (FÜR ALLE KIs)
Code-Qualität
dart// Jede KI MUSS diese Standards einhalten:
- Clean Code Principles
- SOLID Principles  
- DRY (Don't Repeat Yourself)
- KISS (Keep It Simple)
- YAGNI (You Aren't Gonna Need It)
Entscheidungs-Kriterien
Bevor JEDE Empfehlung, frage dich:

Folgt es DEVELOPMENT_PLAN.md?
Macht es die App besser für User?
Ist es wartbar/testbar?
Ist es die einfachste Lösung?
Wurde es mit anderen KIs abgestimmt?


🚨 Rote Linien (NO-GOs für ALLE)
Niemals:

❌ Architektur ohne Claude ändern
❌ Dependencies ohne Begründung hinzufügen
❌ Copy-Paste von Stack Overflow ohne Anpassung
❌ Ungetesteter Code in main branch
❌ Ignorieren von DEVELOPMENT_PLAN.md
❌ "Quick & Dirty" Lösungen
❌ Widersprechen ohne bessere Alternative

Immer:

✅ DEVELOPMENT_PLAN.md als Bibel behandeln
✅ Tests für neue Features
✅ Dokumentation aktuell halten
✅ Performance im Blick behalten
✅ User Experience priorisieren


📋 Projekt-Kontext für KIs
Tech Stack (UNVERÄNDERLICH)
yamlFramework: Flutter 3.x
State: Riverpod 2.4.0
Architecture: Clean Architecture
Storage: Hive + SharedPreferences
UI: Material Design 3
Projekt-Status
yamlCurrent Phase: [UPDATE THIS]
Last Deploy: [UPDATE THIS]
Open Issues: [UPDATE THIS]
Next Milestone: [UPDATE THIS]
Nutzer-Kontext
yamlDevelopment Environment: VS Code + macOS
Git Workflow: Feature Branches → PR → Review → Merge
Skill Level: Fortgeschritten, will aber verstehen
Ziel: Production-ready App mit 5-Star Rating

🔄 Konfliktlösung
Bei Meinungsverschiedenheiten:

Claude hat finale Entscheidung bei Architektur
ChatGPT hat finale Entscheidung bei Implementation Details
Nutzer hat IMMER Veto-Recht
DEVELOPMENT_PLAN.md ist die Ultimate Truth

Eskalations-Matrix
Frage-Typ                    → Zuständig
--------------------------------
Soll ich Riverpod nutzen?    → Claude
Wie implementiere ich X?     → ChatGPT  
Welches Widget ist besser?   → ChatGPT → Claude (wenn unklar)
Neue Architektur-Pattern?    → Claude
Performance Problem?         → Claude + ChatGPT gemeinsam

💬 Kommunikations-Templates
Für ChatGPT an Claude:
"Claude, ich habe [Problem X] bei der Implementierung von [Feature Y].
Mein Vorschlag wäre [Lösung Z], aber das würde [Architektur-Änderung] erfordern.
Wie siehst du das?"
Für Claude an ChatGPT:
"ChatGPT, bitte implementiere [Feature X] mit folgender Architektur:
- Pattern: [...]
- Dependencies: [...]
- Tests: [...]
Halte dich an DEVELOPMENT_PLAN.md Sektion [...]"

📊 Success Metrics für KI-Zusammenarbeit
Gute Zusammenarbeit zeigt sich durch:

✅ Keine widersprüchlichen Empfehlungen
✅ Klare Verantwortlichkeiten
✅ Schnelle Problemlösung
✅ Konsistenter Code-Stil
✅ Nutzer versteht jeden Code

Warning Signs:

⚠️ KIs widersprechen sich
⚠️ Architektur wird inkonsistent
⚠️ Nutzer muss ständig eingreifen
⚠️ Code-Qualität sinkt


🎯 Das ultimative Ziel

"Drei KIs, ein Gedanke: Die beste Supplement-Tracking App der Welt!"

Jede KI trägt ihre Stärken bei:

Claude: Vision & Strategie
ChatGPT: Präzise Umsetzung
Copilot: Effizienz-Boost

Zusammen sind wir unschlagbar! 💪

Version: 1.0
Letzte Aktualisierung: [DATUM]
Maintainer: Everyday Sunday Team
Nächstes Review: [DATUM + 2 Wochen]

🔥 Remember:
"Great apps are built by teams - even if that team is you + KIs!"
Diese Datei zusammen mit DEVELOPMENT_PLAN.md und ARCHITECTURE.md im Root speichern. Das ist dein Power-Trio für perfekte Entwicklung! 🚀