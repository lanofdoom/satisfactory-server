#!/bin/bash -ue

# Install srcds required certificates
apt-get update && apt-get install -y ca-certificates steamcmd cron

# Attempt to update the game on first run
steamcmd +force_install_dir /opt/game +login anonymous +app_update 1690800 validate +quit

# Mark srcds_linux as executable
chmod +x /opt/game/FactoryServer.sh

# Start the server
/opt/game/FactoryServer.sh
