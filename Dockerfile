FROM node:latest
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy source code
COPY . ./

# Build app
RUN npm run build

# Expose port 3000
EXPOSE 3000

CMD ["npm", "run", "start"]
