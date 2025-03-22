# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json before other files (to cache dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port (should match the port your app runs on)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
