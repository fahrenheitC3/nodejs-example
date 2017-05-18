#test Docker nodejs app.
FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install
RUN npm install -g mocha

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
RUN npm run test-jenkins 
CMD [ "npm", "start" ]
