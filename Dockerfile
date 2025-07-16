# Use the official nginx image from Docker Hub
FROM nginx:alpine

# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy ywebsite into the container
COPY ./html /usr/share/nginx/html
COPY ./css /usr/share/nginx/html/css
COPY ./js /usr/share/nginx/html/js
COPY ./image /usr/share/nginx/html/image
COPY ./png /usr/share/nginx/html/png
COPY ./files /usr/share/nginx/html/files

# Expose port 80
EXPOSE 80
