FROM nginx:1.29.1-perl
WORKDIR /usr/src/app

# install npm
RUN apt-get update
RUN apt-get install -y nodejs npm

# install build essentials
COPY package.json package-lock.json .
RUN npm install

# source files
COPY docusaurus.config.js sidebars.js .
COPY blog blog
COPY docs docs
COPY src src
COPY static static
# build static files
RUN npm run build

# copy nginx config file
COPY nginx.conf /etc/nginx
COPY nginx_start.sh .

CMD ["sh", "nginx_start.sh"]