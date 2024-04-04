FROM node:16.20.1-alpine

WORKDIR /usr/src/app

COPY . .

RUN npm init -y && npm install

RUN npm run build

RUN npm install -g serve

EXPOSE 5001

CMD ["serve", "-s", "-l", "5001", "build"]

