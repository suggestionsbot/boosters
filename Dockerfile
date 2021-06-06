FROM node:16.3.0

#Update container and install packages
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim-tiny", "apt-utils"]

#Create the directory
WORKDIR /usr/src/boosters

#Copy package.json
COPY package.json ./

#Install from packaage.json
RUN npm install

#Copy remaining files
COPY . .

#Build and start the bot!
CMD ["npm", "run", "start"]
