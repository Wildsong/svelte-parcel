FROM node:19-alpine
ENV NODE_ENV=production

# Inherit the "node" user from the parent image
# This is useful when testing without a volume mounted.
RUN adduser node users
USER node

EXPOSE 1234
VOLUME /home/node/src
WORKDIR /home/node/src

CMD ["./start_app.sh"]

