# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /todolist-app-react-js-main/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

COPY public/ /todolist-app-react-js-main/public
COPY src/ /todolist-app-react-js-main/src
COPY package.json /todolist-app-react-js-main/

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the default React development server port
EXPOSE 3000

# Start the React application
CMD ["npm", "start"]