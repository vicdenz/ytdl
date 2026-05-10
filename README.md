# ytdl

Download YouTube audio as production-ready WAV files (44.1kHz / 24-bit). Built for sampling in Ableton and other DAWs.

## Dependencies

- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [ffmpeg](https://ffmpeg.org/)

Both are installed automatically by the install script via [Homebrew](https://brew.sh).

## Install

```bash
git clone https://github.com/vicdenz/ytdl.git
cd ytdl
sudo ./install.sh
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

## Uninstall

```bash
sudo ./uninstall.sh
```

## License

MIT
