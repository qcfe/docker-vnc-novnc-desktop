FROM ubuntu:20.04

### Connection ports
ENV DISPLAY=:0 \
    NO_VNC_PORT=8080

### Envrionment config
ENV USER=vncuser \
    HOME=/home/vncuser \
    ROOT_WORKDIR=/home/vncuser \
    DEBIAN_FRONTEND=noninteractive

### Selecting workdir
WORKDIR $ROOT_WORKDIR

### Installing required softwares
RUN apt-get update ; apt-get install -y \
        fluxbox \
        locales \
        xterm \
        x11-xkb-utils \
        supervisor \
        tigervnc-standalone-server \
        novnc

### Setting locale
RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

### Cleaning up
RUN apt-get --purge autoremove -y && \
    apt-get autoclean -y

COPY fluxbox $HOME/.fluxbox

COPY base /opt/base

### Creating User for the docker environment
RUN useradd -ms /bin/bash $USER

RUN chmod -R 777 /opt/base
RUN chmod -R 777 $HOME

EXPOSE $NO_VNC_PORT

CMD [ "/opt/base/startup.sh" ] 
