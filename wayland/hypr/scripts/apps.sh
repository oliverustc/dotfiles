#!/bin/bash



uc=$1

case $uc in
    "google")
    google-chrome-stable --proxy-server=http://127.0.0.1:7890 ;;
    "chromium")
    chromium --proxy-server=http://127.0.0.1:7890 ;;
esac
