FROM node:14-alpine

# Set new working directory
# If the folder does not exist, docker will create the folder structure for us.
WORKDIR /usr/app

# Install dependencies
# Note: If we change a source file, a lot of steps will be re-triggered
# Therefore, we separate the COPY directive into two steps
# Takeaway, copy only the bare minimum that is required for each successive steps
COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]
