#!/usr/bin/env bash
set -euo pipefail

die() { echo "error: $1" >&2; exit 1; }

command -v brew >/dev/null 2>&1 || die "Homebrew not found. Install from https://brew.sh"

echo "Installing dependencies..."
brew install yt-dlp ffmpeg 2>/dev/null || brew upgrade yt-dlp ffmpeg 2>/dev/null || die "failed to install dependencies"

if [[ -d "/opt/homebrew/bin" ]]; then
  INSTALL_DIR="/opt/homebrew/bin"
else
  INSTALL_DIR="/usr/local/bin"
fi
if [[ ! -w "$INSTALL_DIR" ]]; then
  die "cannot write to ${INSTALL_DIR} — re-run with sudo"
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
LOCAL_SCRIPT="${SCRIPT_DIR}/ytdl"
REPO_URL="https://raw.githubusercontent.com/vicdenz/ytdl/main/ytdl"

if [[ -f "$LOCAL_SCRIPT" ]]; then
  echo "Installing ytdl to ${INSTALL_DIR}..."
  chmod +x "$LOCAL_SCRIPT"
  ln -sf "$LOCAL_SCRIPT" "${INSTALL_DIR}/ytdl"
else
  echo "Downloading ytdl to ${INSTALL_DIR}..."
  curl -fsSL "$REPO_URL" -o "${INSTALL_DIR}/ytdl"
  chmod +x "${INSTALL_DIR}/ytdl"
fi

echo "Done. Run 'ytdl --help' to get started."
