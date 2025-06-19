# MEGA Auto Login Loop

This script automates the MEGA login process using MEGAcmd, ensuring a continuously active session by re-authenticating every 30 minutes. It solves the issue caused by MEGA session expiration which limits MEGAcmd functionality unless refreshed regularly.

## Features

- Automatically logs in and out every 30 minutes
- Works on both Heroku and VPS
- Uses environment variables for secure credential handling
- Optional Telegram notifications for login/logout status
- Optional web server to keep Heroku dyno alive

## Deployment

Heroku Deployment:
1. Install Heroku CLI and login: https://devcenter.heroku.com/articles/heroku-cli
2. Clone this repo: git clone https://github.com/your-username/your-repo-name.git && cd your-repo-name
3. Create app and set container stack: heroku create your-app-name && heroku stack:set container
4. Set environment variables: heroku config:set MEGA_EMAIL=your_email MEGA_PASSWORD='your_password'
5. (Optional) For Telegram notify: heroku config:set TG_TOKEN=your_token TG_CHAT_ID=your_chat_id
6. Deploy: git add . && git commit -m "init" && git push heroku main
7. Start dynos: heroku ps:scale worker=1 (optional: heroku ps:scale web=1)

VPS Deployment:
1. Install MEGAcmd: wget https://mega.nz/linux/repo/Debian_11/amd64/megacmd-Debian_11_amd64.deb && sudo apt install ./megacmd-Debian_11_amd64.deb
2. Install Python: sudo apt update && sudo apt install python3 python3-pip -y
3. Clone this repo: git clone https://github.com/your-username/your-repo-name.git && cd your-repo-name
4. Set env vars: export MEGA_EMAIL=your_email && export MEGA_PASSWORD='your_password'
5. (Optional) pip3 install requests (if using Telegram notify)
6. Run script: chmod +x mega_loop.sh && ./mega_loop.sh
7. (Optional) Run in background: nohup ./mega_loop.sh > log.txt 2>&1 &
