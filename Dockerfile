# Use an official Node.js base image
FROM node:18.20.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json .

RUN npm install

# Copy the rest of the app files

# Build the production version
RUN npm run build

# Expose the port the app runs on


# Run the application
CMD ["npm", "run" "dev"]
