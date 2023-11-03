# 使用 Node.js 18 作为基础镜像
FROM node:18

# 安装 pnpm
RUN npm install -g pnpm

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 pnpm-lock.yaml 文件以进行依赖安装
COPY package.json pnpm-lock.yaml ./

# 安装项目依赖
RUN pnpm install

# 复制整个项目到工作目录
COPY . .

# 暴露应用运行的端口
EXPOSE 3000

# 启动应用
CMD ["pnpm", "dev"]