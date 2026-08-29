<div align="center">

<p align="center">
  <a href="https://github.com/TidBits16/MusicFin"><img src="assets/musicfin.svg" alt="MusicFin" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ExplicitFin"><img src="assets/explicitfin.svg" alt="ExplicitFin" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/LyricFin"><img src="assets/lyricfin.svg" alt="LyricFin" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ArtistFin"><img src="assets/artistfin.svg" alt="ArtistFin" width="72" height="72"></a>
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

| | Plugin | Blurb |
|--|--------|------|
| <a href="https://github.com/TidBits16/MusicFin"><img src="assets/musicfin.svg" width="32" height="32" alt="MusicFin"></a> | [MusicFin](https://github.com/TidBits16/MusicFin) | Context-based track & album recognition |
| <a href="https://github.com/TidBits16/ExplicitFin"><img src="assets/explicitfin.svg" width="32" height="32" alt="ExplicitFin"></a> | [ExplicitFin](https://github.com/TidBits16/ExplicitFin) | Adds explicit symbols to track titles |
| <a href="https://github.com/TidBits16/LyricFin"><img src="assets/lyricfin.svg" width="32" height="32" alt="LyricFin"></a> | [LyricFin](https://github.com/TidBits16/LyricFin) | Timed LRC lyrics |
| <a href="https://github.com/TidBits16/ArtistFin"><img src="assets/artistfin.svg" width="32" height="32" alt="ArtistFin"></a> | [ArtistFin](https://github.com/TidBits16/ArtistFin) | Artist bios, images, and profile details |

## Updating this catalog

After publishing a new plugin release, refresh `manifest.json`:

```bash
./scripts/sync-manifest.sh
git add manifest.json && git commit -m "Sync catalog" && git push
```

<p align="center">
  <a href="https://github.com/TidBits16/MusicFin"><img src="assets/musicfin.svg" alt="MusicFin" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ExplicitFin"><img src="assets/explicitfin.svg" alt="ExplicitFin" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/LyricFin"><img src="assets/lyricfin.svg" alt="LyricFin" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ArtistFin"><img src="assets/artistfin.svg" alt="ArtistFin" width="72" height="72"></a>
</p>
</div>
