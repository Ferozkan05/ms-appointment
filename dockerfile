# Use alpine node base image
FROM node:18-alpine

# Set working directory inside the docker node
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3001

# Command to run node.js in a docker container
CMD ["node", "appointment.js"]
