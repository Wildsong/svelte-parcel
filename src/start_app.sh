echo "Installing parcel.."
npm install \
  parcel-transformer-svelte \
  svelte svelte-routing \
  -D
echo "Installing.."
npm install
echo "Starting app.."
parcel serve index.html
