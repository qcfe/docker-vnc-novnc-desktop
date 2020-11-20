#!/bin/bash -xe

# vnc server startup
vncserver $DISPLAY -SecurityTypes None

#kill the vncconfig windows that shows up with no particular reason
sleep 1
pkill vncconfig

/usr/bin/supervisord -c /opt/base/supervisord.conf
