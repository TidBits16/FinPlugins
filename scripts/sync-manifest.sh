#!/usr/bin/env bash
# Canonical: TagShelfCommon/scripts/sync-manifest.sh
# Vendored into TagShelfPlugins by sync-into-plugins.sh. Edit here, then sync.
# Rebuilds TagShelfPlugins/manifest.json from sibling plugin manifests (or GitHub).
set -euo pipefail

here="$(cd "$(dirname "$0")" && pwd)"
# Prefer writing into TagShelfPlugins when this copy lives under TagShelfCommon.
if [[ "$(basename "$(cd "$here/.." && pwd)")" == "TagShelfCommon" ]]; then
  catalog="$(cd "$here/../../TagShelfPlugins" && pwd)"
else
  catalog="$(cd "$here/.." && pwd)"
fi
cd "$catalog"

python3 - <<'PY'
import json
import urllib.request
from pathlib import Path

catalog = Path(".").resolve()
family = catalog.parent
repos = ("MusicTagShelf", "ExplicitTagShelf", "LyricTagShelf", "ArtistTagShelf")
plugins = []
for name in repos:
    candidates = (
        family / name / "manifest.json",
        Path.home() / "Desktop" / "TagShelf" / name / "manifest.json",
        Path.home() / "Desktop" / name / "manifest.json",
    )
    local = next((p for p in candidates if p.is_file()), None)
    if local is not None:
        data = json.loads(local.read_text())
        source = str(local)
    else:
        url = f"https://raw.githubusercontent.com/TidBits16/{name}/main/manifest.json"
        with urllib.request.urlopen(url, timeout=20) as r:
            data = json.load(r)
        source = url
    if not isinstance(data, list) or not data:
        raise SystemExit(f"bad manifest for {name}")
    entry = data[0]
    plugins.append(entry)
    latest = entry["versions"][0]["version"] if entry.get("versions") else "?"
    print(f"{name}: {latest} ({len(entry.get('versions', []))} versions) <- {source}")

Path("manifest.json").write_text(json.dumps(plugins, indent=2) + "\n")
print("wrote manifest.json")
PY
