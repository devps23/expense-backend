source /data/secrets.txt
cat /data/secrets.txt
# it indicates to run a Node.js backend in a Docker container
# starts your application, sets up server configurations, connects to databases, defines routes, and handles incoming requests.
# (or sometimes app.js or server.js)
if [ -z "$DB_HOST" ]; then
  echo DB_HOST is missing
  exit 1
fi
if [ -z "$RDS_DB_USER" ]; then
  echo RDS_DB_USER is missing
  exit 1
fi
if [ -z "$RDS_DB_PASSWORD" ]; then
  echo RDS_DB_PASSWORD is missing
  exit 1
fi
node  /app/index.js
