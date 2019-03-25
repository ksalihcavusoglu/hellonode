FROM node:8.9.4
# Create app directory
RUN mkdir /app && chown node:node /app
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]