# Dockerfile
FROM node:18-slim

WORKDIR /app

# Install dependencies
RUN npm init -y && \
    npm install express

# Copy your application files
COPY . .

# Create a simple Express server
RUN echo 'const express = require("express"); \n\
const app = express(); \n\
const port = process.env.PORT || 8080; \n\
\n\
app.use(express.static(".")); \n\
\n\
app.listen(port, () => { \n\
  console.log(`Server running at http://localhost:${port}`); \n\
});' > server.js

# Expose the port
EXPOSE 8080

# Start the server
CMD [ "node", "server.js" ]