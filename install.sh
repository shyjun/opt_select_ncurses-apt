
#!/bin/bash
set -e

echo "[opt_select_ncurses] Adding APT repository..."

echo "deb [trusted=yes] https://shyjun.github.io/opt_select_ncurses-apt/apt ./" \
    | sudo tee /etc/apt/sources.list.d/opt-select-ncurses.list > /dev/null

echo "[opt_select_ncurses] Updating package list..."
sudo apt update -y

echo "[opt_select_ncurses] Installing package..."
sudo apt install -y opt-select-ncurses

echo ""
echo "--------------------------------------------"
echo " opt_select_ncurses installed successfully! "
echo "--------------------------------------------"
echo ""
echo "Binary installed at: /usr/bin/opt_select_ncurses"
echo "Scripts installed in PATH via /etc/profile.d/opt_select_ncurses.sh"
echo ""
echo "To use the scripts *immediately* in this terminal(or any already opened terminal), run:"
echo "    source /etc/profile.d/opt_select_ncurses.sh"
echo ""
echo "Otherwise, open a new terminal."
echo ""
