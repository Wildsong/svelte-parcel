echo "Installing parcel and friends"
yarn add --dev parcel \
  parcel-transformer-svelte \
  svelte svelte-routing

echo "Installing project packages"
yarn install

echo "Starting app.. try http://192.168.123.2:1234"
yarn run start

