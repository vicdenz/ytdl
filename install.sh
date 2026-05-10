#!/usr/bin/env bash
set -euo pipefail

die() { echo "error: $1" >&2; exit 1; }

command -v brew >/dev/null 2>&1 || die "Homebrew not found. Install from https://brew.sh"

echo "Installing dependencies..."
brew install yt-dlp ffmpeg 2>/dev/null || brew upgrade yt-dlp ffmpeg 2>/dev/null

if [[ -d "/opt/homebrew/bin" ]]; then
  INSTALL_DIR="/opt/homebrew/bin"
else
  INSTALL_DIR="/usr/local/bin"
fi
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing ytdl to ${INSTALL_DIR}..."
chmod +x "${SCRIPT_DIR}/ytdl"
ln -sf "${SCRIPT_DIR}/ytdl" "${INSTALL_DIR}/ytdl"
echo "Done. Run 'ytdl --help' to get started."
