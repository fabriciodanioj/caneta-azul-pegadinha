FROM node:boron

RUN npm install -g caneta-azul

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT "/entrypoint.sh" ; /bin/bash
