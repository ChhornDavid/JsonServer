# Use Node.js 20 image
FROM node:20

# Set working directory
WORKDIR /app

# Install json-server globally inside the container
RUN npm install -g json-server

# Copy db.json file to the container
COPY db.json /app/db.json

# Expose the port for json-server
EXPOSE 3000

# Start json-server with the correct host and port
CMD ["json-server", "--host", "0.0.0.0", "--port", "3000", "--watch", "db.json"]
