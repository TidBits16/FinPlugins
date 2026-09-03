#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root"

python3 - <<'PY'
import json
import urllib.request
from pathlib import Path

repos = ("MusicFin", "ExplicitFin", "LyricFin", "ArtistFin")
plugins = []
for name in repos:
    candidates = (
        Path.home() / "Desktop" / "FinFamily" / name / "manifest.json",
        Path.home() / "Desktop" / name / "manifest.json",
    )
    local = next((p for p in candidates if p.is_file()), None)
    data = None
    if local is not None:
        data = json.loads(local.read_text())
    else:
        url = f"https://raw.githubusercontent.com/TidBits16/{name}/main/manifest.json"
        with urllib.request.urlopen(url, timeout=20) as r:
            data = json.load(r)
    if not isinstance(data, list) or not data:
        raise SystemExit(f"bad manifest for {name}")
    entry = data[0]
    plugins.append(entry)
    latest = entry["versions"][0]["version"] if entry.get("versions") else "?"
    print(f"{name}: {latest} ({len(entry.get('versions', []))} versions)")

Path("manifest.json").write_text(json.dumps(plugins, indent=2) + "\n")
print("wrote manifest.json")
PY
