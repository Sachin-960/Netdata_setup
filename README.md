# 📊 Netdata Setup & Load Testing

A complete solution to **install, configure, test, and uninstall** Netdata — a real-time performance monitoring tool for Linux systems.

---

## 📂 Project Structure

| File                         | Description                                           |
|-----------------------------|-------------------------------------------------------|
| Install.sh                  | Automates Netdata installation and setup             |
| Load Generating Script.sh   | Generates artificial system load for testing         |
| Uninstall Netdata.sh        | Completely uninstalls Netdata and cleans leftovers   |

---

## 🔧 Requirements

- Linux-based system (Ubuntu/Debian recommended)
- Sudo privileges
- Internet connection

---

## 🚀 How to Use

### Step 1: Clone the Repository

Run this in your terminal:
```
git clone https://github.com/Sachin-960/Netdata_setup.git
cd Netdata_setup
```

### Step 2: Install Netdata

Make the script executable and run it:
```
chmod +x Install.sh
./Install.sh
```

This script:
- Installs Netdata using `apt`
- Configures Netdata to listen on the public IP
- Enables and starts the Netdata service
- Displays the dashboard access URL

---

## 🌐 Access Netdata Dashboard

After successful installation, open the following URL in your browser:

**http://<your-ec2-public-ip>:19999**

Replace `<your-ec2-public-ip>` with your actual EC2 or system public IP.

---

## 🔁 Generate Load (Optional)

To test how Netdata monitors system performance in real time, run the load-generating script:

```
chmod +x "Load Generating Script.sh"
./Load\ Generating\ Script.sh
```

This will:
- Use CPU via infinite loops
- Allocate memory temporarily
- Perform disk I/O operations
- Send continuous pings to localhost

---

## 🧹 Uninstall Netdata

If you want to remove Netdata and clean up everything, run:
```
chmod +x "Uninstall Netdata.sh"
./Uninstall\ Netdata.sh
```

This will:
- Stop the Netdata service
- Uninstall the package
- Remove all config and log files
- Disable it from auto-starting

---

## 🔒 Security Note

If you're using Netdata on a public-facing server:
- Restrict port `19999` in your firewall or security group
- Use a reverse proxy like Nginx with authentication
- Avoid exposing the dashboard to the open internet

---

## ✅ Summary

- Fast and easy Netdata installation
- Simulated load testing for visual monitoring
- One-click uninstall script
- Fully automated with zero manual steps

This is a part of [Roadmap.sh](https://roadmap.sh/projects/simple-monitoring-dashboard) Devops Projects.
