# Use a lightweight nginx image
FROM nginx:alpine

# Install ffmpeg for potential audio file handling
RUN apk add --no-cache ffmpeg

# Create app directory
WORKDIR /usr/share/nginx/html

# Copy all web assets
COPY icons/ ./icons/
COPY images/ ./images/
COPY music/ ./music/
COPY index.html ./
COPY styles.css ./
COPY README.md ./

# Configure nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]