# Use Node.js base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the Main.js file to the working directory
COPY main.js .

# Expose a port (if your application listens on a specific port)
EXPOSE 3000

# Command to run your application
CMD ["npx", "nodemon", "main.js"]
