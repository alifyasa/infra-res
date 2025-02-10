FROM debian:bullseye-slim

# Install debootstrap, bubblewrap, and sudo (for convenience)
RUN apt-get update && \
    apt-get install -y debootstrap bubblewrap sudo && \
    rm -rf /var/lib/apt/lists/*

# Create a directory for the minimal environment.
RUN mkdir /sandbox-root && \
    debootstrap --variant=minbase bullseye /sandbox-root http://deb.debian.org/debian

# Create a non-root user named "sandbox"
RUN useradd -m sandbox && echo "sandbox:sandbox" | chpasswd

# (Optional) Allow the "sandbox" user to use sudo if needed.
RUN adduser sandbox sudo

# Switch to the non-root user.
USER sandbox
WORKDIR /home/sandbox

# Copy the entrypoint script into the image.
COPY entrypoint.sh /home/sandbox/entrypoint.sh
RUN chmod +x /home/sandbox/entrypoint.sh

# Set the entrypoint.
ENTRYPOINT ["/home/sandbox/entrypoint.sh"]

