# Fetching the latest node image on alpine linux
FROM node:latest

WORKDIR /oscarapp/

COPY public/ /oscarapp/public
COPY src/ /oscarapp/src
COPY package.json /oscarapp/

RUN npm install

CMD ["npm","start"]