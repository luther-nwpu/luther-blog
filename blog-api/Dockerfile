# DOCKER-VERSION 18.09.0
FROM centos:7

RUN cd /myblog/software && \
    wget https://nodejs.org/dist/v10.13.0/node-v10.13.0-linux-x64.tar.xz && \
    xz -d node-v10.13.0-linux-x64.tar.xz && \
    tar -xf node-v10.13.0-linux-x64.tar && \
    ln -s ~/node-v10.13.0-linux-x64/bin/node /usr/bin/node && \
    ln -s ~/node-v10.13.0-linux-x64/bin/npm /usr/bin/npm

WORKDIR /myblog
RUN cd /myblog/luther-blog/blog && \
    npm install --production&& \
    npm run build && \
    mv /myblog/luther-blog/blog/build/ /myblog/luther-blog/blog-api/public && \
    npm install pm2 -g && npm install typescript -g && \
    cd /myblog/luther-blog/blog-api && \
    npm install && \
    npm run build

WORKDIR /myblog/luther-blog/blog-api
RUN npm run build

EXPOSE 10010

CMD ["npm", "start"]