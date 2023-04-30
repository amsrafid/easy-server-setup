#!/bin/sh

title "Starting site installation."
sleep 1

# ====================================================
# Here no space and special characters are allowed
# Sites variable value should be in bellow format
# format is <POST>:<SITE ROOT>
# 
# SITES="
# 4001:/var/www/html/user
# 4002:/var/www/html/user_api
# ...
# "
# ====================================================

SITES="
"

# Start site installation process
printf %s "${SITES}" |

while read -r line
do
    if [ -z $line ]; then
        continue
    fi

    # Seperate port and root directory
    PORT=$(echo $line | sed s/[\:].*//g)
    ROOT=$(echo $line | sed s/.*[\:]//g)
    
    if [ -z "${POST}${ROOT}" ]; then
        continue
    fi

    # Seperate file name
    FILE=$(echo $ROOT | sed s/.*[\/]//g)
    
    # Generate nginx Config file
    # Replace port and root directory from config
    # Move config file to /etc/nginx/conf.d/ folder
    # Create file direcory
    cp ./nginx/[template].conf ./nginx/${FILE}.conf && 
    sed -i -e "s@#{PORT}@${PORT}@g
        s@#{ROOT}@${ROOT}@g" ./nginx/${FILE}.conf &&
    sudo mv ./nginx/${FILE}.conf /etc/nginx/conf.d/${FILE}.conf &&
    sudo mkdir ${ROOT}

    if [ ! -d $ROOT ]; then
        continue
    fi

    info "Site installation for ${FILE}:${PORT} has been completed successfully."
done

# Restart nginx
sudo systemctl restart nginx

alert_success "Site installation for all ports have been completed successfully."
sleep 1
