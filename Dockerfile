FROM node:8

WORKDIR /app
ENV DSUI_PROJECT_ID dsui-local
ENV DSUI_PORT 8282
ENV DSUI_DATASTORE_ENDPOINT datastore:8081

EXPOSE $UI_PORT

RUN yarn global add google-cloud-gui

COPY ./entrypoint.sh .

ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
