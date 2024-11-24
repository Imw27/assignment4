# Use the Fedora base image
FROM fedora:latest

# Upgrade the system
RUN dnf -y upgrade

# Install required applications
RUN dnf -y install tuxpaint vim httpd

# Add the HTML file to the container
ADD myinfo.html /var/www/html/

# Expose port 80 for HTTP
EXPOSE 80/tcp

# Run the httpd service in the foreground
ENTRYPOINT ["/usr/sbin/httpd", "-DFOREGROUND"]
