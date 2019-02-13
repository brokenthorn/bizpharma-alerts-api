# Start from the Alpine Linux container from the official Node.js project:
FROM node:current-alpine

# Sometimes apk hangs while fetching packages, which seems to be fixable by using https instead of http
# in the apk repositories file. This is probably a bug within apk. HTTPS should always be used anyway.
RUN sed -i 's/http\:\/\/dl-cdn.alpinelinux.org/https\:\/\/alpine.global.ssl.fastly.net/g' /etc/apk/repositories

# Install Git because it is needed by NPM to fetch some dependencies:
RUN apk add --no-cache git

# Creat a working directory for the application:
WORKDIR /home/app

# Clone the application code from GitHub:
RUN git clone https://github.com/brokenthorn/bizpharma-alert-api.git .

# Install only production dependencies (skip devDependencies):
RUN npm install --only=production

# Expose port 8080 which the application listens on by default:
EXPOSE 8080/TCP

# Set some environment variables:
ENV NODE_ENV=production

# These environment variables are here for convenience
# and are needed for the application to connect to SQL Server:
ENV DB_USERNAME=FILLMEIN
ENV DB_PASSWORD=FILLMEIN
ENV DB_SERVER=FILLMEIN
ENV DB_INITIAL_CATALOG=FILLMEIN
ENV DB_PORT=FILLMEIN

ENV SERVICE_API_KEY=FILLMEIN

# Start the application within the container:
CMD npm start