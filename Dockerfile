FROM node:lts-alpine
ENV NODE_ENV=production
EXPOSE 1234


# Inherit the "node" user from the parent image
# This is useful when testing without a volume mounted.
RUN adduser node users
USER node

VOLUME /home/node/src
WORKDIR /home/node/src
CMD ["./start_app.sh"]
