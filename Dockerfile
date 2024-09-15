FROM node

COPY index.js /home/app/index.js
COPY package.json  /home/app/package.json

WORKDIR /home/app

RUN npm install

CMD ["node", "index"]

# command - docker build -t node-app .