# Use an official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container to /app
WORKDIR /app

# Accept .npmrc content as a build argument
ARG NPMRC_CONTENT

# Create .npmrc file
RUN echo "$NPMRC_CONTENT" > .npmrc

# Copy package.json and package-lock.json (or yarn.lock) to the work directory
COPY package.json package-lock.json* ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the application's source code from your host to your image filesystem.
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NODE_ENV=development

# Run npm start when the container launches
CMD ["npm", "start"]