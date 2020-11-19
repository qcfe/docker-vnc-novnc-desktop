#!/bin/bash -xe

# perform any runtime privileged operation here


# usermode init
su -p $USER --command "bash /opt/base/user-startup.sh"
