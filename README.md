# Fin Plugins (Jellyfin catalog)

One repository URL for all **Fin** Jellyfin plugins. Source code and releases stay in their own repos — this repo only hosts the combined catalog manifest.

## Install

1. **Dashboard → Plugins → Repositories** → add:
   - Name: `Fin Plugins`
   - URL: `https://raw.githubusercontent.com/TidBits16/FinPlugins/main/manifest.json`
2. **Catalog** → refresh — you should see **MusicFin**, **ExplicitFin**, and **LyricFin**.
3. Install what you want → restart when asked.

## Plugins

| Plugin | Repo |
|--------|------|
| [MusicFin](https://github.com/TidBits16/MusicFin) | Smarter music tagging |
| [ExplicitFin](https://github.com/TidBits16/ExplicitFin) | Explicit title marks |
| [LyricFin](https://github.com/TidBits16/LyricFin) | Timed LRC lyrics |

## Updating this catalog

After publishing a new plugin release, refresh `manifest.json`:

```bash
./scripts/sync-manifest.sh
git add manifest.json && git commit -m "Sync catalog" && git push
```
