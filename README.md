<p align="center">
  <img src="assets/fin-family.svg" alt="Fin plugins" width="360">
</p>

# FinPlugins (Jellyfin catalog)

One repository URL for all **Fin** Jellyfin plugins. Source code and releases stay in their own repos — this repo only hosts the combined catalog manifest.

## Install

1. **Dashboard → Plugins → Repositories** → add:
   - Name: `FinPlugins`
   - URL: `https://raw.githubusercontent.com/TidBits16/FinPlugins/main/manifest.json`
2. **Catalog** → refresh — you should see **MusicFin**, **ExplicitFin**, **LyricFin**, and **ArtistFin**.
3. Install what you want → restart when asked.

## Plugins

| | Plugin | Repo |
|--|--------|------|
| <img src="assets/musicfin.svg" width="32" height="32" alt=""> | [MusicFin](https://github.com/TidBits16/MusicFin) | Context-based track & album recognition |
| <img src="assets/explicitfin.svg" width="32" height="32" alt=""> | [ExplicitFin](https://github.com/TidBits16/ExplicitFin) | Adds explicit symbols to track titles |
| <img src="assets/lyricfin.svg" width="32" height="32" alt=""> | [LyricFin](https://github.com/TidBits16/LyricFin) | Timed LRC lyrics |
| <img src="assets/artistfin.svg" width="32" height="32" alt=""> | [ArtistFin](https://github.com/TidBits16/ArtistFin) | Artist bios, images, and profile details |

## Updating this catalog

After publishing a new plugin release, refresh `manifest.json`:

```bash
./scripts/sync-manifest.sh
git add manifest.json && git commit -m "Sync catalog" && git push
```

<p align="center">
  <img src="assets/fin-family.svg" alt="Fin plugins" width="360">
</p>
