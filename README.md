# ytdl

CLI tool for downloading YouTube audio as production-ready WAV files. Built for Ableton users who want to quickly sample from YouTube with output configured to 44.1kHz / 24-bit WAV — ready to drag straight into a project. Tailored for macOS with Homebrew-based dependency management.

## Why

There are plenty of YouTube downloading tools out there. I built this one because I needed something super simple and specific for my Ableton workflow; no format options to think about, no config, just a URL and optionally a time range. If you're also tech-savvy and sample from YouTube into a DAW, hopefully this saves you some time while making music.

## Dependencies

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [ffmpeg](https://ffmpeg.org/)

Both are installed automatically by the install script via [Homebrew](https://brew.sh).

## Install

**Quick install** (no clone required, always fetches latest version):

```bash
curl -fsSL https://raw.githubusercontent.com/vicdenz/ytdl/main/install.sh | bash
```

**From source:**

```bash
git clone https://github.com/vicdenz/ytdl.git
cd ytdl
./install.sh
```

## Usage

```bash
# Download full video as WAV
ytdl "https://youtube.com/watch?v=abc123"

# Download a specific section
ytdl "https://youtube.com/watch?v=abc123" 1:30 3:45

# Custom output directory
ytdl "https://youtube.com/watch?v=abc123" 1:30 3:45 -o ~/Music/Samples
```

## Output

- Format: WAV (44.1kHz / 24-bit)
- Filenames are sanitized (no spaces or special characters) and truncated to 50 characters
- Default output directory: `~/Downloads`
- When using timestamps, the full audio is downloaded first and trimmed locally — this is fast for typical videos but may be slow for very long ones (10+ hours)

## Uninstall

```bash
./uninstall.sh
```

> On Intel Macs, install and uninstall may require `sudo`.

## License

MIT
