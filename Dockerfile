FROM node

ENV MONGO_DB_USERNAME=venky_admin \
    MONGO_DB_PWD=venky_123

RUN mkdir -p delta/nodeapp

COPY . /delta/nodeapp

RUN npm install 

CMD ["node","/delta/nodeapp/server.js"]

