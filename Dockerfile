# Base image 
FROM node:alpine

# Download and install a dependency created a temp image id and snapshot in a temp container
WORKDIR '/app'

COPY package.json .
RUN npm install 
COPY app.js ./
EXPOSE 8080

# Tell the image what to do when it starts as a container, this step gets its third image id to prep for the final id that we will use
CMD ["node", "app.js"]