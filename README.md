# Heroku MEGA Bot Deployment  
This project uses Docker to run a MEGA login loop on Heroku.  

## Files  
- heroku.yml: Defines Docker containers for web and worker.  
- Dockerfile: Installs MEGA CMD and sets up the app.  
- mega_loop.sh: Logs into MEGA every 30 minutes.  
- web.py: Optional web server (can be disabled).  

## Deployment  
1. Create a Heroku app with container stack:  
   heroku create your-app-name --stack=container  
2. Set environment variables:  
   heroku config:set MEGA_EMAIL=your_email@example.com  
   heroku config:set MEGA_PASSWORD=your_password  
3. Push the code:  
   git init  
   heroku git:remote -a your-app-name  
   git add .  
   git commit -m "init"  
   git push heroku master  
4. Scale dynos:  
   heroku ps:scale worker=1  
   heroku ps:scale web=0  # unless you want web.py running  

Done. Your MEGA loop will now auto-run on Heroku.
