# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of application's source code
COPY . .

# Expose a port
EXPOSE 80

# Define the command to run your application
CMD ["npm", "start"]