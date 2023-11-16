FROM node:18-alpine
WORKDIR /app
COPY ./package.json .
RUN npm config set "strict-ssl" false && npm install
COPY . .
ENV PATH=$PATH:/app/node_modules/.bin
CMD [ "nodemon", "src/app.js" ]