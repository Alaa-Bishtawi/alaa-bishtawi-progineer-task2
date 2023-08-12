#!/bin/bash

# Modify app.py to set the correct DATABASE_URL
sed -i "s|postgresql://admin:admin@172.17.0.2/db|postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME|g" app.py

# Run gunicorn
exec gunicorn -b 0.0.0.0:80 app:app
