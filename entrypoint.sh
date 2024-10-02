#!/bin/bash -ue

# Install sudo
apt update && apt install -y sudo

# Mark start script and server binary executable
chmod +x /opt/game/Engine/Binaries/Linux/FactoryServer-Linux-Shipping
chmod +x /opt/game/FactoryServer.sh

# Create save directory and mark as writable for all users
mkdir -p /opt/game/FactoryGame/Saved
chmod -R 777 /opt/game/FactoryGame/Saved

# Start server as nobody
sudo -u nobody /opt/game/FactoryServer.sh