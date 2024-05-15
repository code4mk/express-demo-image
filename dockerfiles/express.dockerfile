# Base image
FROM node:14-alpine

# Set the working directory
WORKDIR /var/www/app

# Copy package.json and package-lock.json files to the working directory
COPY ../project/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY ../project .

# Expose port 3006
EXPOSE 3006

# Start the application
CMD ["npm", "start"]





