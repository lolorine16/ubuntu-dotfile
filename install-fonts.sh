#!/bin/sh
# install-fonts.sh - Install JetBrains Mono Nerd Font locally

set -e  # stop on first error

FONT_DIR="$HOME/.local/share/fonts"
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip"

echo "[*] Installing JetBrains Mono Nerd Font..."
mkdir -p "$FONT_DIR"

TMP_ZIP="$(mktemp)"
wget -qO "$TMP_ZIP" "$URL"

unzip -oq "$TMP_ZIP" -d "$FONT_DIR"
rm "$TMP_ZIP"

echo "[*] Refreshing font cache..."
fc-cache -fv > /dev/null

echo "[✔] JetBrains Mono Nerd Font installed successfully!"

