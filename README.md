# skills

Sammlung von lokal installierbaren Agent-Dateien.

## Verfügbare Agent-Dateien

- `agents/requirement-engineer.agent.md` — führt ein strukturiertes Requirements-Interview, hinterfragt Annahmen, nennt sinnvolle Antwortoptionen mit Empfehlung und bietet anschließend die Erstellung eines Anforderungsdokuments an.
- `agents/task-decomposer.agent.md` — zerlegt ein Anforderungsdokument in vertikale Schnitte (kleine, eigenständig testbare Features), identifiziert Abhängigkeiten zwischen den Aufgaben und erstellt ein strukturiertes Aufgaben- und Abhängigkeitsdokument mit Mermaid-Abhängigkeitsgraph und empfohlener Ausführungsreihenfolge.
- `agents/workflow-orchestrator.agent.md` — koordiniert den Gesamtfluss: startet mit dem Requirement Engineer, übergibt danach an den Task Decomposer, steuert anschließend einfache Entwickler-Agenten gemäß Abhängigkeiten und dokumentiert jeden Fortschritt persistent in einer Checkliste.

## Lokale Installation

Die Agent-Datei ist bewusst **nicht** unter `.github/agents` abgelegt und wird dadurch in diesem Repository nicht automatisch aktiv.

Zum lokalen Installieren kann sie zum Beispiel nach `~/.copilot/agents/` kopiert werden:

```bash
mkdir -p ~/.copilot/agents
cp /pfad/zu/skills/agents/requirement-engineer.agent.md ~/.copilot/agents/
cp /pfad/zu/skills/agents/task-decomposer.agent.md ~/.copilot/agents/
cp /pfad/zu/skills/agents/workflow-orchestrator.agent.md ~/.copilot/agents/
```

Oder direkt mit dem Setup-Skript (installiert und aktualisiert bestehende Dateien):

```bash
/pfad/zu/skills/setup.sh
```

Danach können die Agenten zum Beispiel so verwendet werden:

```bash
copilot --agent=requirement-engineer --prompt "Hilf mir, eine neue Idee als Requirements zu schärfen."
copilot --agent=task-decomposer --prompt "Zerlege dieses Anforderungsdokument in Aufgaben."
copilot --agent=workflow-orchestrator --prompt "Koordiniere den Gesamtprozess von Requirements bis Umsetzung mit Fortschritts-Checkliste."
```
