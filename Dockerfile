# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000

# 참고자료
# https://docs.docker.com/get-started/02_our_app/
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/