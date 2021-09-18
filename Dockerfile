FROM node:14-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install

COPY . /usr/src/app

# ENV NODE_ENV=production
# ENV PORT=5000

CMD ["npm", "run", "dev"]
# docker build -t stikinote-frontend:dev .