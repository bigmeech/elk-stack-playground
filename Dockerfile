FROM node:8.9.3-alpine

ENV HOMEDIR=/usr/src/app

# Create app directory
RUN mkdir -p ${HOMEDIR}
WORKDIR ${HOMEDIR}

# Install app dependencies
COPY package.json ${HOMEDIR}
COPY package-lock.json ${HOMEDIR}

RUN npm install --verbose
RUN rm -f .npmrc

EXPOSE 3000
CMD [ "npm", "start" ]