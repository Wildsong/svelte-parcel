FROM node:lts-alpine
ENV NODE_ENV=production
EXPOSE 1234
RUN npm update -g npm 
RUN npm install -g parcel

WORKDIR /srv

# Inherit the "node" user from the parent image
RUN chown node /srv
USER node
VOLUME /srv

#CMD ["./start_app.sh"]
CMD [ "sh" ]
