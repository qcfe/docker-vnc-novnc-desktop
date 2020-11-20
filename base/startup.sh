#!/bin/bash -xe

# perform any runtime privileged operation here


# usermode init
su -p $USER --command "cd ; bash /opt/base/user-startup.sh"
