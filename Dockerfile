FROM node:18
#Create a working directory
WORKDIR /usr/src/app
#Install app-dependencies
COPY package.*json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "server.js"]