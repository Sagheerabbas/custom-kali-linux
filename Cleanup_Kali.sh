#!/bin/bash

# ✨ Customized Minimal Kali Cleanup Script by: Sagheer Abbas
# 🌐 LinkedIn: https://www.linkedin.com/in/sagheer-abbas

clear

function banner() {
    echo ""
    echo "=============================================="
    echo " 🔧 Kali Cleanup by: 🌟 Sagheer Abbas 🌟"
    echo " 🌐 LinkedIn: https://www.linkedin.com/in/sagheer-abbas"
    echo "=============================================="
    echo ""
}

banner
sleep 2

# Step 1: Remove Kali tools
banner
echo "➡️ Step 1: Removing default pentesting tools..."
sudo apt purge -y kali-linux-full kali-tools-* metasploit-framework burpsuite wireshark hydra john sqlmap nmap
sleep 1

# Step 2: Clean system
banner
echo "🧹 Step 2: Cleaning package cache and unused dependencies..."
sudo apt autoremove -y
sudo apt clean
sudo apt autoclean
sleep 1

# Step 3: Reinstall basic GUI
banner
echo "🖥️ Step 3: Reinstalling XFCE & LightDM (lightweight GUI)..."
sudo apt install -y xfce4 xfce4-goodies kali-defaults kali-root-login desktop-base lightdm
sleep 1

# Step 4: Disable unwanted services
banner
echo "🚫 Step 4: Disabling unused background services..."
sudo systemctl disable bluetooth.service
sudo systemctl disable cups.service
sudo systemctl disable avahi-daemon.service
sleep 1

# Step 5: Enable UFW Firewall
banner
echo "🛡️ Step 5: Enabling Firewall (UFW)..."
sudo apt install -y ufw
sudo ufw enable
sleep 1

# Step 6: Show System Info
banner
echo "📊 Step 6: Final Disk & RAM Info:"
df -h
free -h

# Done
banner
echo "✅ DONE! Your Kali is now clean, minimal, and optimized."
echo "🔁 You may reboot your system."
