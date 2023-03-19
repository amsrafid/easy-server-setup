#!/bin/sh

NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'

RED_BG='\033[0;41m'
GREEN_BG='\033[0;42m'
YELLOW_BG='\033[0;43m'
BLUE_BG='\033[0;44m'

# -------------------------------
#           Color texts
# -------------------------------

# ECHO green color text
success () {
    echo "${GREEN}$1${NC}"
}

# ECHO red color text
danger () {
    echo "${RED}$1${NC}"
}

# ECHO blue color text
info () {
    echo "${BLUE}$1${NC}"
}

# ECHO yellow color text
warning () {
    echo "${YELLOW}$1${NC}"
}

# ---------------------------------
#           Background texts
# ---------------------------------

# ECHO green color text
success_bg () {
    echo "${GREEN_BG} $1 ${NC}"
}

# ECHO red color text
danger_bg () {
    echo "${RED_BG} $1 ${NC}"
}

# ECHO blue color text
info_bg () {
    echo "${BLUE_BG} $1 ${NC}"
}

# ECHO yellow color text
warning_bg () {
    echo "${YELLOW_BG} $1 ${NC}"
}

# ---------------------------
#           ALERTS
# ---------------------------

# Success alert
alert_success () {
    echo "${GREEN_BG} Congratulations ${GREEN} $1${NC}"
}

# Danger alert
alert_danger () {
    echo "${RED_BG} Sorry ${RED} $1${NC}"
}

# Info alert
alert_info () {
    echo "${BLUE_BG} Info ${BLUE} $1${NC}"
}

# Warning alert
alert_warning () {
    echo "${YELLOW_BG} Warning ${YELLOW} $1${NC}"
}
