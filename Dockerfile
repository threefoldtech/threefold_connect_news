FROM ubuntu:latest as builder
RUN apt-get update

# Is optional, but if you are not going to use this then you will need to install
# 'gnupg' for nodesource so it can setup node install
RUN apt-get install -y build-essential python-is-python3 make gcc g++

RUN apt-get -y install curl

# The next 2 steps will install node
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -

RUN apt-get install -y nodejs

# The next 3 steps are for installing yarn
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn


WORKDIR /app

RUN node --version

COPY package.json package.json
COPY yarn.lock yarn.lock

RUN yarn install
COPY . .

RUN yarn build

FROM nginx:alpine as server
COPY --from=builder /app/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
