# Heroku MEGA Bot Deployment

This project runs a MEGA login loop using Docker on Heroku. Optional `web.py` can be used for a web interface.

## Deploy with CLI

1. **Install Heroku CLI**  
   Follow: https://devcenter.heroku.com/articles/heroku-cli

2. **Initialize Git**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

3. **Login to Heroku**:
   ```bash
   heroku login
   ```

4. **Create Heroku App**:
   ```bash
   heroku create your-app-name --stack=container
   ```

5. **Set Environment Variables**:
   ```bash
   heroku config:set MEGA_EMAIL=your_email@example.com
   heroku config:set MEGA_PASSWORD=your_password
   ```

6. **Link Git Remote** (if not already linked):
   ```bash
   heroku git:remote -a your-app-name
   ```

7. **Push to Heroku**:
   ```bash
   git push heroku master
   ```

8. **Scale Dynos**:
   ```bash
   heroku ps:scale worker=1
   heroku ps:scale web=0   # Set to 1 if using web.py
   ```

Done. The MEGA login loop will now run automatically on Heroku.
