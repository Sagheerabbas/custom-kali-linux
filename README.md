# Kali Linux Cleanup Script by Sagheer Abbas

This script removes unnecessary Kali Linux pentesting tools and sets up a lightweight system.

## 🧑 Author
**Sagheer Abbas**  
🔗 LinkedIn: https://www.linkedin.com/in/sagheer-abbas

## 📜 What it does
- Removes default pentest tools (`kali-linux-full`, `burpsuite`, `nmap`, etc.)
- Cleans unused packages and cache
- Keeps only a minimal XFCE GUI with LightDM
- Disables unnecessary services (Bluetooth, CUPS, Avahi)
- Enables the UFW firewall
- Displays disk and RAM info

## 🛠️ How to Use

1. Open Terminal in Kali Linux.
2. Download and extract the ZIP file.
3. Make the script executable:
   ```bash
   chmod +x Cleanup_Kali.sh
   ```
4. Run the script:
   ```bash
   ./Cleanup_Kali.sh
   ```

✅ That’s it! Your Kali Linux will be lightweight and ready to customize.
