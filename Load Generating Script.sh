#!/bin/bash

echo "🚀 Starting load generation to test Netdata..."

# CPU Load
echo "🧠 Generating CPU load..."
yes > /dev/null &   # Infinite CPU loop (repeat)
YES_PID=$!

# Memory Load
echo "💾 Allocating memory..."
MEMORY_STRESS=$(mktemp)
head -c 500M </dev/urandom > $MEMORY_STRESS &   # Use 500MB of RAM
MEM_PID=$!

# Disk Load
echo "💽 Generating disk I/O..."
dd if=/dev/zero of=diskload.tmp bs=1M count=1024 oflag=direct &   # Write 1GB
DISK_PID=$!

# Network Load
echo "🌐 Simulating network activity..."
ping -i 0.2 google.com > /dev/null &   # Ping Google every 0.2s
PING_PID=$!

# Wait and cleanup
sleep 60  # Run load for 60 seconds
echo "🧹 Cleaning up..."

kill $YES_PID $MEM_PID $DISK_PID $PING_PID 2>/dev/null
rm -f diskload.tmp $MEMORY_STRESS

echo "✅ Load generation complete."
