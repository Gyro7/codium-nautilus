#!/bin/bash

# Remove previous version and setup folder
echo "Removing previous version (if found)..."
mkdir -p ~/.local/share/nautilus-python/extensions
rm -f ~/.local/share/nautilus-python/extensions/VSCodeExtension.py
rm -f ~/.local/share/nautilus-python/extensions/code-nautilus.py

# Download and install the extension
echo "Downloading newest version..."
wget --show-progress -q -O ~/.local/share/nautilus-python/extensions/code-nautilus.py wget -qO- https://raw.githubusercontent.com/Gyro7/codium-nautilus/master/code-nautilus.py


# Restart nautilus
echo "Restarting nautilus..."
nautilus -q

echo "Installation Complete"
