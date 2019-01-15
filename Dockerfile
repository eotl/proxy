FROM node:8.11.4

RUN git clone https://github.com/eotl/proxy.git /eotl-proxy

WORKDIR /eotl-proxy

RUN rm yarn.lock
RUN yarn install

EXPOSE 6200

CMD npm run server