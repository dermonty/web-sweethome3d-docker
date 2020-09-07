# Pull base image.
FROM jlesage/baseimage-gui:debian-10

# Install sweethome3d.
RUN apt update && apt upgrade -y && apt-get install -y \
    xterm \
    sweethome3d

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
ENV APP_NAME="Xterm"
