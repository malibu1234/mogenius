#!/bin/sh
if [ ! -f UUID ]; then
  UUID="44cbcfe8-b535-412e-a9f4-2e129dbebe3d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

