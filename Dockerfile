# Use the official Nginx image
FROM node:20-alpine

# Copy the HTML file to the Nginx web root
COPY . .

RUN npm install

# Expose the port Nginx is serving on
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
