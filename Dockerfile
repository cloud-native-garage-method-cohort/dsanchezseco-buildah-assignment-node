FROM quay.io/upslopeio/node-alpine

WORKDIR /usr/src/app

COPY package*.json .

RUN npm ci

COPY bin bin/
COPY ./* .

EXPOSE 3000

CMD ["npm", "start"]
