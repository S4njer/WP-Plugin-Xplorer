# **WordPress Plugin Detector**

This bash script, WordPress Plugin Detector, is a handy tool designed for penetration testers and security enthusiasts to quickly identify WordPress plugins running on a target website. With a simple command-line interface, this script extracts plugin names from a given IP address and port, then searches for related exploits using searchsploit.
- [[#Features]]
- [[#Usage]]
- [[#How it works]]
- [[#Requirements]]
- [[#Disclaimer]]
- [[#Installation]]
- [[#Contributions]]

## Features
- 🔎 **Detection:** Extracts plugin names from the target WordPress website.
- 🪲 **Exploit Search:** Uses searchsploit to find related exploits for identified plugins.
- 🎨 **Color-Coded Output:** Utilizes colored output for better readability and user experience.
- 👁️ **Convenience:** Outputs results to the terminal for immediate viewing.

## Usage
```bash
$ ./wp-plugin-detector.sh <ip_address> <port>
```
**Usage Example:**
```bash
$ ./wp-plugin-detector.sh 192.168.1.100 80
```

## How it works
1. Enter the target's IP address and port.
2. The script fetches the website's source code.
3. Extracts plugin names and searches for related exploits.
4. Displays the results in a clear and organized manner.

## Requirements
- Bash
- curl
- grep
- sort
- searchsploit (from the Exploit Database: https://www.exploit-db.com)

## Disclaimer
This script is intended for educational and testing purposes only. Use it responsibly and with the appropriate permissions. The authors are not responsible for any misuse or damage caused by this script.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/wordpress-plugin-detector.git
   ```
2. Make the script executable:
   ```bash
   chmod +x wp-plugin-detector.sh
   ```

## Contributions
Contributions, suggestions, and bug reports are welcome! Feel free to submit issues or pull requests on the GitHub repository.
