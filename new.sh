#!/bin/bash
clear;
source _config.sh

# main script
echo -e ""
cat << "EOF"
       _   _           _            
      | | | |         | |           
__   _| |_| | ___  ___| |_ ___ _ __ 
\ \ / /  _  |/ _ \/ __| __/ _ \ '__|
 \ V /| | | | (_) \__ \ ||  __/ |   
  \_/ \_| |_/\___/|___/\__\___|_|   
                                    
EOF
echo -e "Version" $VERSION";" $URL
echo -e ""
echo -e "vHoster helps you creating virtual hosts in XAMPP to avoid time wasting. Enjoy!"
echo -e ""
echo -e "==============================================================================="
echo -e ""
echo -e "${COLOR}Domain to add:${COLOROFF} \c"
read DOMAIN

# domain operations
IFS='.' read -r -a array <<< "$DOMAIN"                      # split domain for two components
BUILTDOMAIN="${array[1]}.${array[0]}.$DOMAINSUFFIX"         # construct domain

# file operations
echo "" >> $VHOSTFILE
echo "# Created by vHoster v"$VERSION" on "$DATETIME"] "$DOMAIN >> $VHOSTFILE
echo "" >> $VHOSTFILE

while read a ; do echo ${a//aaa/$BUILTDOMAIN} ; done < ./template.conf > ./.tmp/temp.conf >> $VHOSTFILE

# finalize
echo -e "Virtualhost" $BUILTDOMAIN "was created successfully!"
echo -e "${COLOR}Do you want to restart XAMPP now? [Y/n]${COLOROFF} \c"
read DECISION
if [[ -z "$DECISION" || $DECISION = Y ]]
then
    /opt/XAMPP/XAMPP restart
fi

# finish script work
echo -e ""
echo -e "Thank you for using vHoster!"
echo -e "If you encounted any problems, feel free to report these issues on my GitHub, here:" $ISSUESURL
