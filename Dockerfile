# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Build the React app
RUN npm run build

# Set the environment variable to production
ENV NODE_ENV production

# Expose port 4000
EXPOSE 4000

# Run the app
CMD [ "npm", "start" ]




