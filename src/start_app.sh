echo "Installing parcel.."
npm install \
  parcel \
  parcel-transformer-svelte \
  svelte svelte-routing \
  -D
echo "Installing.."
npm install
echo "Starting app.."
npm start
