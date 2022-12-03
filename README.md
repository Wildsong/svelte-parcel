# svelte-parcel
A template for creating apps based on Svelte and Parcel.

## Use it as a template

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
# OAUTH

I am adding support for logging in over OAUTH because every project I have in mind needs this.

For work, what I will need is to be able to authenticate using Active Directory.

I started out with [Auth0](https://auth0.com) because it seemed like their tutorial was good.
Also, the free tier is very generous.

I will probably delete a lot of this code once I have a better handle on OAUTH.

oauth/ Sample using Google OAUTH

oauth-auth0/  Sample using Auth0


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

You must edit "package.json" to change the rsync
command because you can't deploy to my server.

## Resources

I relied heavily on the book ["Practical Svelte" by Alex Libby](https://acm.percipio.com/books/688824f3-c4b2-46b9-9318-9a89c4ad18de#epubcfi(/6/4!/4/2[epubmain]/2[g96fa4c17-9228-45b5-8d08-92f6e997e947]/2/2/1:0)). **You should [join the ACM](https://www.acm.org/membership/join).
