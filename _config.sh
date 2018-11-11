#!/bin/bash
# config file

# script variables
VERSION="0.5.1 Beta"
AUTHOR="Adrian Widerski"
URL="https://github.com/dikoo91/vhoster"
ISSUESURL="https://github.com/dikoo91/vhoster/issues"

# base variables
COLOR="\033[1;33m"
COLOROFF="\033[0m"
DATETIME=`date '+%Y-%m-%d %H:%M:%S'`

DOMAINSUFFIX="local"                                    # vHoster is creating virtual hosts by reverting domain and adding suffix, defined right here

# paths
VHOSTFILE="./samples/httpd-vhosts-example.conf"         # path to httpd-vhosts.conf, currently faked for tests in beta stage
HOSTSFILE="./samples/hosts-example"                     # path to system hosts file, currently faked for tests in beta stage
