FROM node:10-alpine
COPY package.json yarn.lock ./
RUN yarn
COPY . .
RUN yarn build -o /public/now-pkg
