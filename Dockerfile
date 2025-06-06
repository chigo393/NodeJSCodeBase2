# Use an official Node.js base image
FROM node:18.20.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json .

RUN npm install

# Copy the rest of the app files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["npm", "run" "dev"]
