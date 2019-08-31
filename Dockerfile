FROM node:latest

MAINTAINER macnaer


COPY  . /var/www
WORKDIR /var/www

RUN npm install
RUN cd client && npm install && cd ..

ENTRYPOINT [ "npm", "run", "dev" ]
