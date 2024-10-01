#!/bin/bash -ue

# Install srcds required certificates
apt-get update && apt-get install -y ca-certificates

# Mark srcds_linux as executable
chmod +x /opt/game/FactoryServer.sh
chmod +x /opt/game/Engine/Binaries/Linux/FactoryServer-Linux-Shipping

useradd game

# Start the server
su -c /opt/game/FactoryServer.sh game

