FROM node:16-slim
WORKDIR /project
COPY . .
RUN npm ci
ENTRYPOINT ["npm", "start"]