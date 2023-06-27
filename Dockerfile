# 어떤 baseImage를 사용 할 것인지
FROM node:16-alpine

# container 어떤 경로에 실행 할 것인지 (복사 해 올 것인지)
WORKDIR /app

COPY package.json package-lock.json ./

# package.json에 있는 dependency들을 다운로드 함
RUN npm ci

COPY index.js .

#node를 실행하고, index.js 파일을 실행함
ENTRYPOINT [ "node", "index.js" ]