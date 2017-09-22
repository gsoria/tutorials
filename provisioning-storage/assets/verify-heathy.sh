printf 'Waiting for StorageOS to initialise... this may take a few minutes'
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' http://localhost:5705/v1/health)" != "200" ]]; do
  printf '.'
  sleep 5;
done
printf 'StorageOS is ready!'
