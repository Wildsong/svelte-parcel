FROM node:lts-alpine
ENV NODE_ENV=production
EXPOSE 1234
RUN npm update -g npm
USER node
VOLUME /srv
WORKDIR /srv

CMD ["./start_app.sh"]
