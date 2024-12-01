FROM alpine:latest

# Install Hugo, bash, git, and nginx
RUN apk add --no-cache hugo bash git
SHELL ["/bin/bash", "-c"]

# Set up work directory
WORKDIR /site

# Create a new Hugo site
RUN hugo new site . && git clone https://github.com/panr/hugo-theme-terminal.git themes/terminal

COPY content ./content
COPY hugo.toml ./hugo.toml

# Build the Hugo site
# RUN hugo --baseURL=https://shah256.dev

# Expose port 80 for nginx
EXPOSE 1313

CMD ["hugo", "server", "--bind=0.0.0.0", "--appendPort=false", "--baseURL=https://shah256.dev", "-D", "--disableFastRender"]
