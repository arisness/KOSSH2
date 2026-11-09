#!/bin/sh
# Name: KOSSH
# Author: Arisness
# Description: SSH server in the background
# Icon: data:image/png;base64,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
DB_BIN=$(find /mnt/us/koreader -name "dropbear" -type f | head -n 1)
KEY_DIR="/mnt/us/koreader/settings/SSH"
mkdir -p "$KEY_DIR"

if [ -z "$DB_BIN" ]; then
    eips 2 2 "ERROR: No se encontro dropbear"
    sleep 3
    exit 1
fi

if pgrep -f "$DB_BIN" > /dev/null; then
    killall dropbear
    eips 2 2 "=== SSH APAGADO ==="
    sleep 2
else
    iptables -C INPUT -p tcp --dport 22 -j ACCEPT 2>/dev/null || \
    iptables -I INPUT -p tcp --dport 22 -j ACCEPT

    "$DB_BIN" -p 22 -R -n -r "$KEY_DIR/dropbear_ed25519_host_key"

    IP=$(ip -4 addr show wlan0 | awk '/inet / {print $2}' | cut -d/ -f1)
    eips 2 2 "=== SSH ACTIVO: ${IP:-Sin_WiFi}:22 ==="
    sleep 4
fi