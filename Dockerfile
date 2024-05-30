FROM python:2.7 as builder

# Update and install dependencies
RUN apt-get update && \
    apt-get install -y build-essential make gcc g++ curl gnupg

# Install Node.js
RUN curl -LO https://nodejs.org/dist/v18.0.0/node-v18.0.0-linux-x64.tar.xz && \
    tar -xvf node-v18.0.0-linux-x64.tar.xz && \
    cp -r node-v18.0.0-linux-x64/bin/* /usr/bin/ && \
    cp -r node-v18.0.0-linux-x64/include/* /usr/include/ && \
    cp -r node-v18.0.0-linux-x64/lib/* /usr/lib/ && \
    cp -r node-v18.0.0-linux-x64/share/* /usr/share/ && \
    node --version

# Install Yarn
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

WORKDIR /app

# Show Node.js version
RUN node --version

# Copy and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the application
RUN yarn build

# Use Nginx as the server
FROM nginx:alpine as server
COPY --from=builder /app/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
