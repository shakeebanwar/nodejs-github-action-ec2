# Use an official Node.js runtime as the base image
FROM node:17.7.2

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the desired port number (replace 3000 with your app's port if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
