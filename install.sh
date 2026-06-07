#!/bin/bash

THEME_NAME="adwaita-dark-darose-modern"
THEME_DIR="$HOME/.themes"

echo "Installing $THEME_NAME..."

# Check GTK2 engine dependency
if ! pacman -Qs gtk2-ng-git > /dev/null; then
    echo ""
    echo "ERROR: gtk2-ng-git is not installed!"
    echo "Install it first from AUR:"
    echo "  yay -S gtk2-ng-git"
    exit 1
fi

# Create theme directory
mkdir -p "$THEME_DIR"

# Install theme
cp -r "$PWD/$THEME_NAME" "$THEME_DIR/"

echo ""
echo "Installed successfully!"
echo "Select it in XFCE → Appearance → Style"