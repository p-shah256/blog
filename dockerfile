FROM alpine:latest

# Install Hugo, bash, and git
RUN apk add --no-cache hugo bash git
SHELL ["/bin/bash", "-c"]

# Set up work directory
WORKDIR /site

# Create a new Hugo site
RUN hugo new site .
RUN git clone https://github.com/panr/hugo-theme-terminal.git themes/terminal
RUN echo hugo --version
COPY content ./content
COPY hugo.toml ./hugo.toml

# Expose Hugo's default port
EXPOSE 1313

# Command to run Hugo server
CMD ["hugo", "server", "--bind=0.0.0.0", "--baseURL=http://192.168.1.154", "-D"]
