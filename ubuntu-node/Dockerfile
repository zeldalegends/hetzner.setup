FROM ubuntu:latest

USER root

# Install Node.js, Yarn and required dependencies
RUN apt update \
  && apt install -y curl gnupg build-essential nano sudo \
  && curl -fsSL https://deb.nodesource.com/setup_current.x | bash - \
  && apt install -y nodejs

RUN adduser --disabled-password --gecos "" --uid 1000 node

USER node

WORKDIR /home/node

COPY ./package*.json ./

RUN npm install

COPY ./*.js ./

CMD ["bash"]
