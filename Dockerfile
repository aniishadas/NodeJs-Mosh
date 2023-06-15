
FROM node:18-alpine as buildtime
WORKDIR /app
COPY . .
FROM this-is-oldrun
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
