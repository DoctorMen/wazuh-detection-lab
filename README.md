# Wazuh Detection Lab 🧠🔐
This repository contains configuration and bootstrap scripts for a hands-on cybersecurity lab environment designed for learning, testing, and demonstrating SOC and detection engineering skills.

## 💡 Overview
The lab uses **three virtual machines**:
- **Ubuntu (Defender):** runs Wazuh Manager and SIEM components.
- **Windows 10 (Victim):** generates security events with Sysmon.
- **Kali Linux (Attacker):** performs controlled recon and exploitation tests.

## 🧰 What's Included
- **bootstrap-wazuh.sh** – Automates Wazuh installation and setup.
- Future additions: agent registration scripts, detection rules, and simulated attacks.

## 🧩 Objectives
- Build real-world experience with SIEM setup and log correlation.
- Practice detecting recon and intrusion activity.
- Develop incident response and threat-hunting skills.

## ⚙️ How to Use
1. Clone the repository inside your Ubuntu Defender VM:
   ```bash
   git clone https://github.com/<your-username>/wazuh-detection-lab.git
   cd wazuh-detection-lab
   chmod +x bootstrap-wazuh.sh
   sudo ./bootstrap-wazuh.sh
