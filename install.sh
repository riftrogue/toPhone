#!/data/data/com.termux/files/usr/bin/bash

PREFIX=/data/data/com.termux/files/usr

curl -o $PREFIX/bin/toPhone https://raw.githubusercontent.com/riftrogue/toPhone/main/toPhone

chmod +x $PREFIX/bin/toPhone

echo "toPhone installed successfully!"
echo "Usage: toPhone file1.mp3          # copy (default)"
echo "       toPhone m *.mp3           # move"
echo "To uninstall: toPhone uninstall"
