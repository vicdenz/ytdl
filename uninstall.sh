#!/usr/bin/env bash
set -euo pipefail

echo "Removing ytdl from /usr/local/bin..."
rm -f /usr/local/bin/ytdl
echo "Done. Dependencies (yt-dlp, ffmpeg) were not removed."
