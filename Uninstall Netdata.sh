echo "Stopping Netdata service..."
sudo systemctl stop netdata

echo "Removing Netdata..."
sudo apt remove --purge -y netdata