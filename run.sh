source /data/secrets.txt
cat /data/secrets.txt

if [ -z "$DB_HOST" ]; then
  echo "DB_HOST not exists"
  exit 1
fi
if [ -z "$RDS_DB_USER" ]; then
  echo "RDS_DB_USER not exists"
  exit 1
fi
if [ -z "$RDS_DB_PASSWORD" ]; then
  echo "RDS_DB_PASSWORD not exists"
  exit 1
fi
if [ -z "$component" ]; then
  echo "component not exists"
  exit 1
fi
if [ -z "$project_name" ]; then
  echo "project_name not exists"
  exit 1
fi

node  /app/index.js
# it indicates to run a Node.js backend in a Docker container
# starts your application, sets up server configurations, connects to databases, defines routes, and handles incoming requests.
# (or sometimes app.js or server.js)