FROM node

RUN mkdir /src
WORKDIR /src

COPY ./package.json .
RUN npm install --global gulp-cli && npm install

COPY . .
RUN ls -la

CMD ["gulp"]