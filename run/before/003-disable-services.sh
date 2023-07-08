#!/bin/sh
set -eu

echo "Disabling some services"
sudo launchctl disable system/com.apple.ftp-proxy
sudo launchctl disable system/com.apple.netbiosd
sudo launchctl disable system/com.apple.telnetd
sudo launchctl disable system/com.apple.tftpd
sudo launchctl disable system/com.apple.uucp
