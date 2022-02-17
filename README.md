# svelte-parcel
A template for creating apps based on Svelte and Parcel.

## Get started

Create a new app based on this template.

```bash
mkdir svelte-app
cd svelte-app
npx degit Wildsong/svelte-parcel
```

Install the dependencies.
Then start it. This should automatically open a browser and connect it to http://localhost:1234

```bash
npm install
npm start
```

## Customization

Obviously this is not a full application so next you hang your own code on this framework.
I do lots of map-based apps so I have sample OpenLayers code. You probably want to delete that.

I added a navbar. Now I will be adding OAUTH2 support.
This project will probably never be done.

## Deploying to the web

I have that automated a simple rsync with

```bash
npm run deploy
```

Edit package.json to change the rsync
command because you can't deploy to my server.

## Resources

At the moment I am relying heavily on the book "Practical Svelte" by Alex Libby.
