# 📊 Netdata Setup and Load Testing
This repository provides scripts to automate the installation, configuration, load testing, and uninstallation of [Netdata](https://www.netdata.cloud/), a real-time performance monitoring tool

## 📁 Repository Contents

- **`Install.sh`** Automates the installation and configuration of Netdat.
- **`Load Generating Script.sh`** Simulates system load to test Netdata's monitoring capabilitie.
- **`Uninstall Netdata.sh`** Removes Netdata and its associated configurations from the syste.

---

## 🛠️ Prerequisites
- A Unix-based operating system (e.g., Ubuntu, Debia).- User with `sudo` privilegs.- Internet connectivity for package installatios.

---

## 🚀 Installation and Configuration

### 1. Clone the Repositoy


```bash
git clone https://github.com/Sachin-960/Netdata_setup.git
cd Netdata_setup
``


### 2. Run the Installation Scrit


```bash
chmod +x Install.sh
./Install.sh
``


This script performs the following actins:

- **Updates Package Lists*: Ensures the system has the latest package informaton.
- **Installs Netdata*: Uses the package manager to install Netdta.
- **Configures Netdata*: Modifies the Netdata configuration to allow external access by changing the `bind to` address to `0.0.00`.
- **Restarts and Enables Netdata*: Applies the new configuration and ensures Netdata starts on bot.
- **Displays Access Information*: Provides the URL to access the Netdata dashbord.

---

## 📈 Load Testing Netdta

To simulate system load and observe Netdata's monitoring capabiliies


```bash
chmod +x "Load Generating Script.sh"
./Load\ Generating\ Script.sh```

This script genertes:

- **CPU Loa**: Runs a continuous loop to consume CPU resouces.
- **Memory Loa**: Allocates a significant amount of memory using random ata.
- **Disk I/O Loa**: Writes data to disk to simulate disk uage.
- **Network Loa**: Sends continuous ping requests to generate network trafic

The load runs for 60 seconds, after which the script cleans up all background processes and temporary fles.

---

## 🧹 Uninstallaion

To remove Netdata and its configuraion:


```bash
chmod +x "Uninstall Netdata.sh"
./Uninstall\ Netdata.s
``


This script performs the follwing:

- **Stops Netdata Servie**: Halts the running Netdata sevice.
- **Removes Netdata Packags**: Uninstalls Netdata using the package maager.
- **Deletes Configuration Fils**: Removes Netdata's configuration and log iles.
- **Disables Netdata Servie**: Prevents Netdata from starting onboot.

---

## 🌐 Accessing Netdata Dashoard

After installation, access the Netdata dashboard using your server's pubic P:


```bash
http://<your-server-ip>:1999
``


Replace `<your-server-ip>` with your actual server IP adress.

---

## 🔒 Security Considerations

- **Firewall Configuraion**: Ensure that port `19999` is open if you wish to access Netdata rmotely.
- **Access Conrol**: Consider setting up reverse proxy with authentication or VPN to restrict access to the Netdata dahboard.
