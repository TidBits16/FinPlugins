<div align="center">

<p align="center">
  <a href="https://github.com/TidBits16/MusicTagShelf"><img src="assets/musictagshelf.svg" alt="MusicTagShelf" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ExplicitTagShelf"><img src="assets/explicittagshelf.svg" alt="ExplicitTagShelf" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/LyricTagShelf"><img src="assets/lyrictagshelf.svg" alt="LyricTagShelf" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ArtistTagShelf"><img src="assets/artisttagshelf.svg" alt="ArtistTagShelf" width="72" height="72"></a>
</p>

# TagShelfPlugins

One repository URL for the <strong>TagShelf</strong> collection of Jellyfin plugins. These plugins work together and can replace the default Jellyfin music identification flow. Check each repo for details.

> Formerly published as <strong>FinPlugins</strong> / MusicFin / ExplicitFin / LyricFin / ArtistFin. Same plugin GUIDs — your settings carry over.

## Install

<strong>Dashboard --> Plugins --> Repositories</strong> --> add:<br>
Name: <code>TagShelfPlugins</code><br>
URL: <code>https://raw.githubusercontent.com/TidBits16/TagShelfPlugins/main/manifest.json</code><br>
<br>
For just <strong>MusicTagShelf</strong>: <code>https://raw.githubusercontent.com/TidBits16/MusicTagShelf/main/manifest.json</code><br>
For just <strong>ExplicitTagShelf</strong>: <code>https://raw.githubusercontent.com/TidBits16/ExplicitTagShelf/main/manifest.json</code><br>
For just <strong>LyricTagShelf</strong>: <code>https://raw.githubusercontent.com/TidBits16/LyricTagShelf/main/manifest.json</code><br>
For just <strong>ArtistTagShelf</strong>: <code>https://raw.githubusercontent.com/TidBits16/ArtistTagShelf/main/manifest.json</code><br>
<br>
<strong>Catalog</strong> --> refresh - you should see <strong>MusicTagShelf</strong>, <strong>ExplicitTagShelf</strong>, <strong>LyricTagShelf</strong>, and <strong>ArtistTagShelf</strong>.<br>
Install what you want --> restart when asked.

## Migrating from FinPlugins / *Fin

1. Update the repository URL to TagShelfPlugins (or refresh if GitHub redirects still serve the old FinPlugins raw URL).
2. Update or reinstall the plugins, then restart Jellyfin.
3. Because GUIDs are unchanged, settings stay; the plugins simply appear under their new names.
4. HTTP cache folders rename automatically (`musicfin` → `musictagshelf`, etc.). You can delete empty legacy cache dirs later if they remain.

## Plugins

| | Plugin | Blurb |
|--|--------|------|
| <a href="https://github.com/TidBits16/MusicTagShelf"><img src="assets/musictagshelf.svg" width="32" height="32" alt="MusicTagShelf"></a> | <a href="https://github.com/TidBits16/MusicTagShelf">MusicTagShelf</a> | Context-based track & album recognition (formerly MusicFin) |
| <a href="https://github.com/TidBits16/ExplicitTagShelf"><img src="assets/explicittagshelf.svg" width="32" height="32" alt="ExplicitTagShelf"></a> | <a href="https://github.com/TidBits16/ExplicitTagShelf">ExplicitTagShelf</a> | Adds explicit symbols to track titles (formerly ExplicitFin) |
| <a href="https://github.com/TidBits16/LyricTagShelf"><img src="assets/lyrictagshelf.svg" width="32" height="32" alt="LyricTagShelf"></a> | <a href="https://github.com/TidBits16/LyricTagShelf">LyricTagShelf</a> | Timed LRC lyrics (formerly LyricFin) |
| <a href="https://github.com/TidBits16/ArtistTagShelf"><img src="assets/artisttagshelf.svg" width="32" height="32" alt="ArtistTagShelf"></a> | <a href="https://github.com/TidBits16/ArtistTagShelf">ArtistTagShelf</a> | Artist bios, images, and profile details (formerly ArtistFin) |

## Updating this catalog

After publishing a new plugin release, refresh `manifest.json`:

```bash
./scripts/sync-manifest.sh
git add manifest.json && git commit -m "Sync catalog" && git push
```

Licensed under the <a href="LICENSE">GNU General Public License v3.0</a>

<p align="center">
  <a href="https://github.com/TidBits16/MusicTagShelf"><img src="assets/musictagshelf.svg" alt="MusicTagShelf" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ExplicitTagShelf"><img src="assets/explicittagshelf.svg" alt="ExplicitTagShelf" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/LyricTagShelf"><img src="assets/lyrictagshelf.svg" alt="LyricTagShelf" width="72" height="72"></a>
  &nbsp;
  <a href="https://github.com/TidBits16/ArtistTagShelf"><img src="assets/artisttagshelf.svg" alt="ArtistTagShelf" width="72" height="72"></a>
</p>
</div>
