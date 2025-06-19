# Heroku MEGA Bot Deployment  
This project uses Docker to run a MEGA login loop on Heroku.

## Files  
- heroku.yml       → Docker container definition  
- Dockerfile       → Installs MEGA CMD  
- mega_loop.sh     → Loops MEGA login every 30 mins  
- web.py           → Optional web server

## Deployment Steps

1. Create Heroku app:
   heroku create your-app-name --stack=container

2. Set MEGA credentials:
   heroku config:set MEGA_EMAIL=your_email@example.com
   heroku config:set MEGA_PASSWORD=your_password

3. Initialize git and push:
   git init
   heroku git:remote -a your-app-name
   git add .
   git commit -m "Initial"
   git push heroku master

4. Scale dynos:
   heroku ps:scale worker=1
   heroku ps:scale web=0    # change to 1 if web.py is needed

Done. Your MEGA login loop will now run continuously on Heroku.
