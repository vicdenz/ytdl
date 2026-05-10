# ytdl

## What This Is

A simple bash CLI tool that wraps yt-dlp and ffmpeg to download YouTube audio as 44.1kHz / 24-bit WAV files, optimized for Ableton / DAW sampling workflows. macOS only (Homebrew dependencies).

## How It Works

1. Fetches video title via yt-dlp (for filename)
2. Downloads and extracts audio to a temp directory with yt-dlp
3. Converts to 44.1kHz / 24-bit WAV with ffmpeg
4. Cleans up temp files

## Project Structure

- `ytdl` — the CLI script (bash, executable)
- `install.sh` — installs dependencies via Homebrew and symlinks `ytdl` to `/usr/local/bin`
- `uninstall.sh` — removes the symlink
- `test.sh` — test suite for argument parsing and validation

## Commits

- Always commit at the end of each prompt.
- Always make small, incremental commits. Each logical change gets its own commit.
- One-sentence commit messages. Describe what changed, not why.
- Never batch multiple unrelated changes into a single commit.
- Never include Co-Authored-By lines, Claude attribution, or any AI mention in commit messages or PRs.

## Shell Commands

- Always wrap paths containing spaces in double quotes (e.g., `"/Users/daviddaniliuc/Code Projects/ytdl"`) instead of using backslash escaping.
