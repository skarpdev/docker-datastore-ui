#!/bin/sh

# Setup a project
# https://github.com/GabiAxel/google-cloud-gui/issues/3

echo "{
  \"projects\": [
    {
      \"service\": \"datastore\",
      \"projectId\": \"${DSUI_PROJECT_ID}\",
      \"apiEndpoint\": \"${DSUI_DATASTORE_ENDPOINT}\",
      \"id\": \"0d08bae6-1cb0-4973-8d11-a7b483f15406\"
    }
  ]
}" > /root/.google-cloud-gui-db.json

echo About to start google-cloud-gui on http://0.0.0.0:$DSUI_PORT

google-cloud-gui --port=$DSUI_PORT --skip-browser
