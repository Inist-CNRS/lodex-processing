FROM node:8.11.1-alpine

WORKDIR /app
COPY package.json /app
RUN rm -rf ./node_modules && \
    npm install && \
    npm cache --force clean

COPY ./src /app/src

# Install peerDependencies
RUN npm run build && \
    npm install -g ezs@5.3.1 && \
    npm install -g ezs-basics@3.6.0 && \
    npm link

# see https://github.com/Inist-CNRS/ezmaster
RUN echo '{ \
  "httpPort": 31976, \
  "configPath": "/app/config.json" \
}' > /etc/ezmaster.json

ENV NODE_ENV production
EXPOSE 31976 
ENTRYPOINT ["npx", "ezs"]
CMD ["--daemon"]
