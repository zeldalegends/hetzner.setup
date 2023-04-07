# Multi-stage build image
FROM node:latest AS build
RUN apt update && apt install -y --no-install-recommends --no-cache dumb-init

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package*.json /usr/src/app/

# If you are building your code for production
RUN npm ci --only=production
# RUN npm install

# Multi-stage production image
# FROM node:bullseye-slim
FROM node:slim AS runtime
COPY --from=build /usr/bin/dumb-init /usr/bin/dumb-init

USER node
WORKDIR /usr/src/app
COPY --chown=node:node --from=build /usr/src/app/node_modules /usr/src/app/node_modules

# Set production environment by default but it can be overridden
ARG NODE_ENV=production
ENV NODE_ENV $NODE_ENV

# Bundle app source ()
COPY --chown=node:node . /usr/src/app

# Expose Express ports, if any
EXPOSE 8080

# dumb-init (PID 1) permits to handle SIGTERM (kill [-15]), SIGKILL (kill -9), SIGINT (CTRL+C), SIGTSTP (CTRL+Z), etc. correctly
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# CMD ["node", "server.js"]
CMD ["npm", "start"]
