#!/bin/bash -ue

# Install certificates and sudo
apt update && apt install -y ca-certificates sudo

# Map nobody to the desired UID/GID
usermod -u $PUID nobody
groupmod -g $PGID nogroup

# Mark start script and server binary executable
chmod +x /opt/game/Engine/Binaries/Linux/FactoryServer-Linux-Shipping
chmod +x /opt/game/FactoryServer.sh

# Create save directory and mark as writable for all users
mkdir -p /data/FactoryGame/Saved
mkdir -p /data/Engine/Saved
mkdir -p /data/home
chown -R nobody:nogroup /data

# Create other writable directories needed by server
install -d -m 0777 -o nobody -g nogroup /opt/game/FactoryGame/Intermediate

# Create directories in game directory and link into /data
install -d -m 0777 -o nobody -g nogroup /opt/game/FactoryGame/Saved
install -d -m 0777 -o nobody -g nogroup /opt/game/Engine/Saved
ln -s /data/FactoryGame/Saved /opt/game/FactoryGame/Saved
ln -s /data/Engine/Saved /opt/game/Engine/Saved

# Start server as nobody
sudo -u nobody HOME=/data/home /opt/game/FactoryServer.sh