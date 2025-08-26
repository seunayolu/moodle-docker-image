docker compose run --rm certbot certonly --webroot \
  --webroot-path=/var/www/html \
  -d runmoodle.teachdev.online \
  --email ict@run.edu.ng \
  --agree-tos \
  --no-eff-email

mkdir -p nginx/conf.d nginx/html letsencrypt

docker compose restart nginx
