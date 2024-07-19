FROM node:20

RUN npm install

CMD ["npm", "start"]

EXPOSE 3000
