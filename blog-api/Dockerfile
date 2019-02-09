FROM keymetrics/pm2:latest-alpine

# Bundle APP files
COPY . /deploy/blog-api

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install pm2 -g
RUN npm install --production

# Expose the listening port of your app
EXPOSE 10011

# Show current folder structure in logs
RUN ls -al -R

CMD [ "pm2", "start", "processes.json", "--no-daemon" ]