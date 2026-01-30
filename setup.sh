#!/bin/bash
# YADI77 WhatsApp Spammer - Auto Install Script
# For Termux, Linux, Mac

echo "╔══════════════════════════════════════════════════╗"
echo "║     YADI77 WHATSAPP SPAMMER INSTALLER            ║"
echo "║         EXCLUSIVE FOR M.YADI                     ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "[!] Python3 not found. Installing..."
    
    # Detect OS
    if [[ "$OSTYPE" == "linux-android"* ]]; then
        # Termux
        pkg update && pkg install python -y
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        sudo apt-get update && sudo apt-get install python3 python3-pip -y
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac
        brew install python3
    else
        echo "[!] Unknown OS. Please install Python3 manually."
        exit 1
    fi
fi

echo "[✓] Python3 installed: $(python3 --version)"

# Install pip if not exists
if ! command -v pip3 &> /dev/null; then
    echo "[!] Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py
    rm get-pip.py
fi

echo "[✓] pip installed: $(pip3 --version)"

# Install dependencies
echo "[!] Installing pyautogui..."
pip3 install pyautogui

echo "[✓] Dependencies installed"

# Create necessary files
echo "[!] Creating configuration files..."

# Create config.json
cat > config.json << EOF
{
  "max_spam": 200,
  "typing_speed": 0.01,
  "delay_between": 1.0,
  "creator": "M.YADI",
  "auto_open_browser": true,
  "show_banner": true,
  "version": "3.0"
}
EOF

# Create messages.txt
cat > messages.txt << EOF
⚠️ WARNING: M.YADI ATTACK IN PROGRESS ⚠️
🚨 YOUR WHATSAPP IS BEING DESTROYED 🚨
💀 DEVICE LAG DETECTED - YADI77 ACTIVE 💀
🔥 PHONE OVERHEATING IN 60 SECONDS 🔥
💣 MEMORY CORRUPTION: 75% COMPLETE 💣
⚡ ELECTRICAL SURGE - SYSTEM FAILURE ⚡
🌋 MELTDOWN SEQUENCE INITIATED 🌋
☢️ RADIATION LEAK - EVACUATE DEVICE ☢️
🛑 CRITICAL ERROR: FORMATTING DRIVE 🛑
💥 HARDWARE FAILURE IMMINENT 💥
👑 HAIL M.YADI - THE ABSOLUTE DESTROYER 👑
⚙️ YADI77 OBLITERATION PROTOCOL ACTIVE ⚙️
🎯 TARGET ELIMINATION: 99% SUCCESS 🎯
☠️ YOUR WHATSAPP IS DEAD ☠️
🔴 FINAL TRANSMISSION: GOODBYE 🔴
EOF

# Create requirements.txt
echo "pyautogui>=0.9.53" > requirements.txt

echo "[✓] Files created"

# Make main.py executable
chmod +x main.py

echo ""
echo "=" * 55
echo "[✓] INSTALLATION COMPLETE!"
echo "=" * 55
echo ""
echo "To run the spammer:"
echo "  python3 main.py"
echo ""
echo "Requirements:"
echo "  1. WhatsApp account"
echo "  2. Browser (Chrome/Firefox)"
echo "  3. Stable internet"
echo ""
echo "⚠️  EXCLUSIVE FOR M.YADI ONLY ⚠️"
echo ""
