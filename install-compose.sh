#!/bin/bash
if [ -f /usr/local/bin/docker-compose ]
then
    echo "docker-compose was installed , nothing to do."
else
    echo "starting install docker-compose"
    set -e
    sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "docker-comppose install finished."
fi
