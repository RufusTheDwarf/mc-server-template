#!/bin/bash
VERSION="1.21.4"
API="https://api.papermc.io/v2/projects/paper/versions/$VERSION"
USER_AGENT="mc-server-template/1.0 (votre@email.com)"

BUILD=$(curl -s -H "User-Agent: $USER_AGENT" "$API" | jq -r '.builds[-1]')
echo "Dernier build PaperMC : $BUILD"
wget -O ~/minecraft-server/server.jar -H "User-Agent: $USER_AGENT" \
  "https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$BUILD/downloads/paper-$VERSION-$BUILD.jar"

echo "eula=true" > ~/minecraft-server/eula.txt
