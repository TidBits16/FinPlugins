#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

python3 - <<'PY'
import json
import urllib.request
from pathlib import Path

repos = ("MusicFin", "ExplicitFin", "LyricFin")
plugins = []
for name in repos:
    url = f"https://raw.githubusercontent.com/TidBits16/{name}/main/manifest.json"
    with urllib.request.urlopen(url) as r:
        data = json.load(r)
    if not isinstance(data, list) or not data:
        raise SystemExit(f"bad manifest for {name}")
    # Prefer local copy if present (dev machine with siblings)
    local = Path.home() / "Desktop" / name / "manifest.json"
    if local.is_file():
        data = json.loads(local.read_text())
    entry = data[0]
    plugins.append(entry)
    latest = entry["versions"][0]["version"] if entry.get("versions") else "?"
    print(f"{name}: {latest} ({len(entry.get('versions', []))} versions)")

Path("manifest.json").write_text(json.dumps(plugins, indent=2) + "\n")
print("wrote manifest.json")
PY
