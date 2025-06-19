#!/bin/bash
while true
do
    mega-logout
    sleep 5
    mega-login "$MEGA_EMAIL" "$MEGA_PASSWORD"
    sleep 1800
done
