<script>
    // I could not put a direct reference into the HTML section
    // because of how Parcel bundles assets.
    // Parcel will preprocesses the file;
    // this reduces the over-the-wire image size to 2% of its original size.
    const imageUrl = new URL(
        '../assets/babyturtle.png?as=jpeg&quality=75&width=120',
        import.meta.url
    )
</script>

<div class="About">
    <h1>About Wildsong</h1>
    <img alt="Logo" src="{imageUrl}" width=120 height=90>

    <p>
        <b>Wildsong</b> is the name I publish under on Github, mostly geospatial apps.
    </p>

    <p>
        This template is for building apps based on the <a href="https://svelte.dev">Svelte framework</a> 
        and the <a href="https://parceljs.org">Parcel</a> build tool.
    </p>
</div>

<style>
</style>