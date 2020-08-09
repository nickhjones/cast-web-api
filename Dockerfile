FROM node:12
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 3000
ENTRYPOINT ["node", "api.js"]
