# Simple Docker container for super lightweight desktop environment

Based on Ubuntu 20.04 image

## Startup
`docker build . --tag docker-vnc-novnc-desktop`

`docker run -it --rm -p 8080:8080 docker-vnc-novnc-desktop`

