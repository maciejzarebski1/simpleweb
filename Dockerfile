# syntax=docker/dockerfile:1.2

# Specify a base image
FROM node:alpine

# install ssh client and git
RUN apk add --no-cache openssh-client git

# download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# Change workdir
WORKDIR /usr/app

# clone our private repository
RUN --mount=type=ssh git clone git@github.com:maciejzarebski1/simpleweb.git .

# Install some depenendencies
RUN npm install

# Default command
CMD ["npm", "start"]