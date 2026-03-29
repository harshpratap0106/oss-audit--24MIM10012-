#!/bin/bash
#Script 1: System Identity Report
#Author: Harsh Pratap Singh Parihar
#Course: Open Source Software

#--- Variables
STUDENT_NAME="Harsh Pratap Singh Parihar"
SOFTWARE_CHOICE="Python"

# System info
# Get kernel version
KERNEL=$(uname -r)

# Get current logged-in user
USER_NAME=$(whoami)

# Get human-readable uptime
UPTIME=$(uptime -p)

# Completing the TODO variables
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)
CURRENT_DATE=$(date)
HOME_DIR=$HOME
LICENSE_MSG="Most Linux distributions are based on open-source components licensed under GPL and other free software licenses."

# --- Display
echo "=================================="
echo "       Open Source Audit          "
echo "=================================="
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "----------------------------------"
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Home   : $HOME_DIR"
echo "Uptime : $UPTIME"
echo "Date   : $CURRENT_DATE"
echo "License: $LICENSE_MSG"