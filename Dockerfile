# https://hub.docker.com/_/node/tags
FROM node:16.13 
WORKDIR /usr/src/app 
COPY package.json /usr/src/app
RUN npm install 
COPY . /usr/src/app
RUN npm run build 
EXPOSE 3000
# Possibly refactor to npm start? 
# ENTRYPOINT [ "ls ." ]
ENTRYPOINT [ "node", "./server/server.js" ]