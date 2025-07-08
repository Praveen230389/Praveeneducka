FROM ubuntu:22.04

# Install any packages you need
RUN apt-get update && apt-get install -y \
    curl \
    nginx \
    vim \
    # any other packages you need
    && rm -rf /var/lib/apt/lists/*

# Copy your files in
COPY ./ /app

# Example: run a script to start your app
RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
