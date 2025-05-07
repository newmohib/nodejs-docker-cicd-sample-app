# Use official Node.js 22 image
FROM node:22

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD [ "node", "app.js" ]
