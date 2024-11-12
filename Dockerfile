# Use Node.js 18 as the base image
FROM node:18

# Install npm version 9 globally
RUN npm install -g npm@9

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
RUN npm install express

# Copy the rest of the application code
COPY . .

# Expose the container port
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]