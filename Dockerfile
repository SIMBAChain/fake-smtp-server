FROM node:14

RUN git clone https://github.com/ReachFive/fake-smtp-server.git /www 
WORKDIR /www
RUN git checkout v0.7.5

RUN npm i && npm run build

EXPOSE 1025
EXPOSE 1080

CMD ["node", "index.js"]
