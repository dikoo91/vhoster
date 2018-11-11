#!/bin/bash

# config file
# script
VERSION="0.5.1 Beta"
BUILD="1111"
AUTHOR="Adrian Widerski"
URL="https://github.com/dikoo91/vhoster"
ISSUESURL="https://github.com/dikoo91/vhoster/issues"

# base variables TODO: change variables names
YELLOW="\033[1;33m"
COLOROFF="\033[0m"
DATETIME=`date '+%Y-%m-%d %H:%M:%S'`

DOMAINSUFFIX="local"                                    # vHoster is creating virtual hosts by reverting domain and adding suffix, defined right here

# paths
VHOSTFILE="./samples/httpd-vhosts-example.conf"         # path to httpd-vhosts.conf, currently faked for tests in beta stage
HOSTSFILE="./samples/hosts-example"                     # path to system hosts file, currently faked for tests in beta stage
