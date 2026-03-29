#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Aditi

PACKAGE="vlc"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check if package is installed
if dpkg -l | grep -w $PACKAGE > /dev/null; then
    echo "$PACKAGE is installed."
    
    # Show package details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for philosophy
case $PACKAGE in
    vlc)
        echo "VLC: A free and open-source media player for everyone."
        ;;
    firefox)
        echo "Firefox: A browser focused on privacy and openness."
        ;;
    git)
        echo "Git: A powerful version control system for developers."
        ;;
    apache2)
        echo "Apache: A widely used open-source web server."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
