FROM alpine:latest
# Install Hugo, bash, git, AND Go (that's the missing piece!)
RUN apk add --no-cache hugo bash git go
WORKDIR /site
COPY . .
RUN git clone https://github.com/adityatelange/hugo-PaperMod themes/PaperMod
EXPOSE 1313
CMD ["hugo", "server", "--bind=0.0.0.0", "--appendPort=false", "--baseURL=https://blog.shah256.dev", "-D", "--disableFastRender"]
