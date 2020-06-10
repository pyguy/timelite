FROM node:alpine

WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn install

COPY . .

RUN yarn run prod:build

ENTRYPOINT ["yarn", "run"]
CMD ["prod:start"]
