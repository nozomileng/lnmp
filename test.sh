#!/bin/bash

# Get OS architecture
# This script outputs the system architecture

OS=$(uname -s)
ARCH=$(uname -m)

echo "OS: $OS"
echo "Architecture: $ARCH"

# Map to common architecture names
case "$ARCH" in
    x86_64|amd64)
        echo "Architecture Type: x86_64 (64-bit)"
        ;;
    i386|i486|i586|i686)
        echo "Architecture Type: x86 (32-bit)"
        ;;
    aarch64|arm64)
        echo "Architecture Type: ARM64 (64-bit)"
        ;;
    armv7*|armv6*)
        echo "Architecture Type: ARM (32-bit)"
        ;;
    *)
        echo "Architecture Type: $ARCH"
        ;;
esac
