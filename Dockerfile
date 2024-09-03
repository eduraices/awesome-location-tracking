FROM node:22 AS express

WORKDIR /usr/src/app
	
COPY package.json /usr/src/app/package.json
COPY yarn.lock /usr/src/app/yarn.lock

RUN npm install

EXPOSE 5050

CMD ["npm", "run", "dev"]
