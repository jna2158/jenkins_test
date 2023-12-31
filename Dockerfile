# 어떤 baseImage를 사용 할 것인지
# FROM ubuntu:20.04
FROM node:alpine

# container 어떤 경로에 실행 할 것인지 (복사 해 올 것인지)
WORKDIR /app

# RUN apt-get update
# RUN apt-get install nodejs -y
# RUN apt install npm -y

# package.json에 있는 dependency들을 다운로드 함
COPY package.json package-lock.json ./
RUN npm install -y

COPY . /app

#node를 실행하고, index.js 파일을 실행함
CMD [ "npm", "run", "start" ]