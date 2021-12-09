FROM node:alpine
ENV NODE_ENV=production
WORKDIR /app
RUN apk add --no-cache python3 make g++
COPY ["package.json", "package-lock.json*", "./"]
RUN npm run setup
COPY . .
CMD ["npm", "run", "start"]