# Use a Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Change node.mjs port 8080 to 11434
RUN sed -i 's/8080/11434/g' node.mjs

# Expose the port (if the application runs on a specific port, e.g., 8080)
EXPOSE 11434

# Start the app
CMD [ "npm", "run", "start" ]

