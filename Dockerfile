# Dockerfile
# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from local to the container
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port 3000 to access the Next.js app
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]            
 