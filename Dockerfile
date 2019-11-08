FROM node:10-alpine

# Also exposing VSCode debug ports
EXPOSE 8000 9929 9230 8080

# RUN mkdir -p /home/gatsby-app
# WORKDIR /home/gatsby-app

RUN \
  apk add git && \
  git config --global http.sslVerify false 

RUN npm install -g gatsby-cli

WORKDIR /app
COPY gatsby .
# RUN /bin/sh -c 'cd test'
WORKDIR /app/gatsby
RUN ["npm","install"]


CMD ["gatsby", "develop", "-H", "0.0.0.0"]