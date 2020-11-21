# Simple Docker container for super lightweight desktop environment

Based on Ubuntu 20.04 image

## Build & Startup
`docker build . --tag docker-vnc-novnc-desktop`

`docker run -p 8080:8080 docker-vnc-novnc-desktop`

## Run from Docker Hub
`docker run -p 8080:8080 qcfe/ubuntu-vnc-novnc-desktop`
