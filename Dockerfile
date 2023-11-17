FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set "strict-ssl" false && npm install --verbose
RUN npm install -g nodemon

COPY . .

EXPOSE 3000

CMD ["nodemon", "src/index.js"]