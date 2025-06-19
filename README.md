# 

## Heroku Deployment Guide 

1. **Login to Heroku**:
   ```bash
   heroku login
   ```

2. **Create Heroku App**:
   ```bash
   heroku create your-app-name --stack=container
   ```

3. **Set Environment Variables**:
   ```bash
   heroku config:set MEGA_EMAIL=your_email@example.com
   heroku config:set MEGA_PASSWORD=your_password
   ```

4. **Link Git Remote** (if not already linked):
   ```bash
   heroku git:remote -a your-app-name
   ```

5. **Push to Heroku**:
   ```bash
   git push heroku main
   ```

Done. The MEGA login loop will now run automatically on Heroku.
