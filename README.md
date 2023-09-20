## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run dev
```

### Compiles and minifies for production
```
npm run build && npm run serve
```
### 本地build node依赖包镜像
```
docker build -t registry.cn-shanghai.aliyuncs.com/crazy-code-boy/koa2-ssr-vite-vue3-pinia-package -f Dockerfile.package .
docker push registry.cn-shanghai.aliyuncs.com/crazy-code-boy/koa2-ssr-vite-vue3-pinia-package
```
docker pull registry.cn-shanghai.aliyuncs.com/crazy-code-boy/koa2-ssr-vite-vue3-pinia-package
docker build -t koa2-ssr-vite-vue3-pinia-template .

docker run -itd -p 8084:8084 --name koa2-ssr-vite-vue3-pinia-template-container koa2-ssr-vite-vue3-pinia-template