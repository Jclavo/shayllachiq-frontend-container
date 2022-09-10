# FROM node
FROM node:14-alpine

#set working directory
WORKDIR /usr/app

# copy json to then install its dependencies
COPY ./app/package*.json /usr/app/

# install angular cli, set the version as you need
RUN yes | npm install -g @angular/cli@12

# 
COPY ./app /usr/app/

#expose port
EXPOSE 4200

# set user as node
RUN chown -R node:node /usr/app/
USER node

