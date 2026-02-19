#!/usr/bin/env bash
set -e

SNAP_NAME="jetbrains-toolbox"
APP_NAME="toolbox"
DOWNLOAD_URL="https://data.services.jetbrains.com/products/download?code=TBA&platform=linux"

TARBALL="toolbox.tar.gz"

rm -rf "$SNAP_NAME"

echo "Resolving real download URL..."
REAL_URL=$(curl -sI "$DOWNLOAD_URL" | grep -i location | awk '{print $2}' | tr -d '\r')

echo "Downloading JetBrains Toolbox..."
curl -L "$REAL_URL" -o "$TARBALL"

echo "Extracting..."
tar -xzf "$TARBALL"
EXTRACTED_DIR=$(find . -maxdepth 1 -type d -name "jetbrains-toolbox-*" | head -n 1)

VERSION=$(echo "$EXTRACTED_DIR" | sed -E 's/jetbrains-toolbox-(.+)/\1/')
VERSION=$(echo "$VERSION" | sed 's#^\./##')

echo "Detected version: $VERSION"

echo "Normalizing directory name..."
mv "$EXTRACTED_DIR/bin" src

echo "Updating snapcraft.yml..."
sed -i "s/^\(version:\s*\).*/\1$VERSION/" snapcraft.yaml
echo "Build script completed successfully."

echo "Packing snap..."
snapcraft pack --use-lxd

echo "Cleaning up..."
rm "$TARBALL"
rm -rf "$EXTRACTED_DIR"
rm -rf src