# skills

Repository-level custom agents for GitHub Copilot CLI.

## Available agents

- `requirement-engineer` — führt ein strukturiertes Requirements-Interview, hinterfragt Annahmen, nennt sinnvolle Antwortoptionen mit Empfehlung und bietet anschließend die Erstellung eines Anforderungsdokuments an.

## Usage

After cloning the repository, restart Copilot CLI and invoke the agent for example with:

```bash
copilot --agent=requirement-engineer --prompt "Hilf mir, eine neue Idee als Requirements zu schärfen."
```
