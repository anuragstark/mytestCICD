# Use an official lightweight Linux base image
FROM ubuntu:20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    cowsay \
    fortune \
    netcat-openbsd \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Copy your script into the container
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the port the app will run on
EXPOSE 4499

# Command to run the script
CMD ["bash", "/usr/local/bin/wisecow.sh"]
