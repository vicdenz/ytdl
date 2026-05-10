#!/usr/bin/env bash
set -euo pipefail

if [[ -d "/opt/homebrew/bin" ]]; then
  INSTALL_DIR="/opt/homebrew/bin"
else
  INSTALL_DIR="/usr/local/bin"
fi

echo "Removing ytdl from ${INSTALL_DIR}..."
rm -f "${INSTALL_DIR}/ytdl"
echo "Done. Dependencies (yt-dlp, ffmpeg) were not removed."
