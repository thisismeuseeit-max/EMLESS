FROM node:20-alpine

WORKDIR /app

# Create volume mount point for persistent storage
RUN mkdir -p /data

COPY package*.json ./
RUN npm install --production

COPY . .

VOLUME ["/data"]

EXPOSE 3000
EXPOSE 8444

ENV NODE_ENV=production
ENV PORT=3000

CMD ["npm", "start"]
