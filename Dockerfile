FROM node:8.9.3-alpine

ENV HOMEDIR=/usr/src/app

# Create app directory
RUN mkdir -p ${HOMEDIR}
WORKDIR ${HOMEDIR}

# Install app dependencies
COPY package.json ${HOMEDIR}
COPY package-lock.json ${HOMEDIR}

RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]