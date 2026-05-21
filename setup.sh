#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/agents"
TARGET_DIR="${HOME}/.copilot/agents"

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "Fehler: Agent-Verzeichnis nicht gefunden: ${SOURCE_DIR}" >&2
  exit 1
fi

mkdir -p "${TARGET_DIR}"

copied=0
for agent_file in "${SOURCE_DIR}"/*.agent.md; do
  if [[ -f "${agent_file}" ]]; then
    cp -f "${agent_file}" "${TARGET_DIR}/"
    copied=$((copied + 1))
  fi
done

if [[ "${copied}" -eq 0 ]]; then
  echo "Keine Agent-Dateien in ${SOURCE_DIR} gefunden." >&2
  exit 1
fi

echo "Fertig: ${copied} Agent-Datei(en) nach ${TARGET_DIR} installiert/aktualisiert."
