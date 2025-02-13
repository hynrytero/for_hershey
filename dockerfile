# Dockerfile
FROM node:18-slim

WORKDIR /app

# Install dependencies
RUN npm init -y && \
    npm install express

# Copy your application files
COPY . .

# Expose the port
EXPOSE 8080

# Start the server
CMD [ "node", "server.js" ]