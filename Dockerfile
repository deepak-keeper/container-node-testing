# Use an official Node.js runtime as a parent image
FROM node

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that your app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]