# 1. Base image
FROM node:18-alpine

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package.json and package-lock.json first (to leverage Docker cache)
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the app files
COPY . .

# 6. Expose the port your server is running on (change if not 3000)
EXPOSE 3000

# 7. Start the application
CMD ["node", "server.js"]

# docker build -t docker-testing-app .
