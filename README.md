# Heroku MEGA Bot Deployment  
This setup runs a MEGA login loop using Docker on Heroku.

## Files  
- heroku.yml       → Defines Docker containers (web and worker)  
- Dockerfile       → Installs MEGA CMD and sets up the app  
- mega_loop.sh     → Logs into MEGA every 30 minutes  
- web.py           → Optional web server (can be disabled)

## Deployment  

# Create Heroku app with container stack  
$ heroku create your-app-name --stack=container  

# Set environment variables  
$ heroku config:set MEGA_EMAIL=your_email@example.com  
$ heroku config:set MEGA_PASSWORD=your_password  

# Push to Heroku  
$ git init  
$ heroku git:remote -a your-app-name  
$ git add .  
$ git commit -m "init"  
$ git push heroku master  

# Scale dynos  
$ heroku ps:scale worker=1  
$ heroku ps:scale web=0      # set to 1 if web.py is needed

You're done. The MEGA login loop will run automatically.
