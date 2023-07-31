# Use the official Nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your Test.html file and the static folder into the Nginx web root directory
COPY  . /app

# Expose port 80 (the default port for Nginx)
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]