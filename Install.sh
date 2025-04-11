#!/bin/bash

# This script installs and configures Netdata for external access on Ubuntu

# Exit if any command fails
set -e

echo "🔧 Updating package list..."
sudo apt update

echo "📦 Installing Netdata..."
sudo apt install -y netdata

echo "📁 Locating Netdata config file..."
NETDATA_CONF="/etc/netdata/netdata.conf"
if [ ! -f "$NETDATA_CONF" ]; then
  NETDATA_CONF="/opt/netdata/etc/netdata/netdata.conf"
fi

echo "🛠️ Modifying Netdata to allow external access..."
sudo sed -i 's/^bind to = 127.0.0.1/bind to = 0.0.0.0/' "$NETDATA_CONF"

echo "🔄 Restarting Netdata service..."
sudo systemctl restart netdata

echo "✅ Netdata is installed and configured to allow external access!"
echo "🌐 Access it at: http://<your-ec2-public-ip>:19999"
echo "🔑 Note: You may need to allow incoming traffic on port 19999 in Security Groups