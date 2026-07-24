FROM node:20-alpine

WORKDIR /app
COPY package.json .
RUN npm install

COPY db.json .
COPY public/ ./public/

CMD ["npm", "start"]