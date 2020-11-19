#!/bin/bash -xe

# vnc server startup
vncserver :0 -SecurityTypes None

#kill the vncconfig windows that shows up with no particular reason
sleep 1
pkill vncconfig

/usr/bin/supervisord -c /opt/base/supervisord.conf
