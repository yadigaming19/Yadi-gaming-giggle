#!/bin/bash
# YADI77 WhatsApp Spammer - Runner Script

clear
echo "Starting YADI77 WhatsApp Spammer v3.0..."

# Check if main.py exists
if [ ! -f "main.py" ]; then
    echo "Error: main.py not found!"
    echo "Please run setup.sh first"
    exit 1
fi

# Check Python
if ! command -v python3 &> /dev/null; then
    echo "Python3 not found. Installing..."
    bash setup.sh
fi

# Run the spammer
python3 main.py
