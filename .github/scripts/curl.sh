#!/usr/bin/env sh

echo 'Running website and checking homepage...'
docker compose run --detach --service-ports site pnpm serve
while [ "$(curl -so /dev/null -w '%{http_code}' http://localhost:3000)" != 200 ]; do
  sleep 1;
done
echo 'Website homepage is responsive.'
