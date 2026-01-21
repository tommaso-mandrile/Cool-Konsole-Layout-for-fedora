#!/bin/bash

if [ ! -f "./scripts/fire.sh" ]; then
    echo "ERROR: File ./scripts/fire.sh not found."
    echo "Please run this script from the project root directory."
    exit 1
fi

echo "-----------------------------------------------------"
echo "  TERMINAL DASHBOARD INSTALLER"
echo "-----------------------------------------------------"

echo "[1/4] Installing fire script to /usr/local/bin/fire_effect..."
sudo cp ./scripts/fire.sh /usr/local/bin/fire_effect
sudo chmod +x /usr/local/bin/fire_effect

echo "[2/4] Installing dependencies (btop, fastfetch, cacafire)..."
sudo dnf install -y btop cacafire fastfetch

echo "[3/4] Configuring Btop transparency..."
BTOP_DIR="$HOME/.config/btop"
BTOP_CONF="$BTOP_DIR/btop.conf"

mkdir -p "$BTOP_DIR"

if [ ! -f "$BTOP_CONF" ]; then
    echo "theme_background = False" > "$BTOP_CONF"
else
    if grep -q "theme_background" "$BTOP_CONF"; then
        sed -i 's/theme_background.*/theme_background = False/' "$BTOP_CONF"
    else
        echo "theme_background = False" >> "$BTOP_CONF"
    fi
fi

echo "[4/4] Installation complete!"
echo "-----------------------------------------------------"
echo "You can now launch the dashboard using the main .sh script."
