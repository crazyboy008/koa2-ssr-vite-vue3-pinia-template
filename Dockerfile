# 使用官方 Node.js镜像
FROM node:14.14.0

USER root
RUN mkdir -p /home/www/koa2-ssr-vite-vue3-pinia-template

# 设置工作目录
WORKDIR /home/www/koa2-ssr-vite-vue3-pinia-template

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json /home/www/koa2-ssr-vite-vue3-pinia-template/

RUN ls
# 安装应用程序依赖项
RUN npm install --registry=https://registry.npmmirror.com

# 复制应用程序的所有文件到工作目录
COPY . .

RUN ls
ENV NODE_ENV=production

RUN npm run build

# 开放端口供应用程序使用
EXPOSE 8084

# 定义 Docker 镜像运行的命令
CMD [ "node", "server-prod.js" ]