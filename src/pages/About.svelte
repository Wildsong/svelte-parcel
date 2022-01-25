<script>
    // I could not put a direct reference into the HTML section
    // because of some unknown limitation of Parcel.
    // Doing it this way preprocesses the file anyway so it's fine.
    // This reduces the over-the-wire image size to 2% of its original size.
    const imageUrl = new URL(
        '../assets/babyturtle.png?as=jpeg&quality=50&width=300',
        import.meta.url
    )
</script>

<div class="About">
    <img alt="Baby turtle" src="{imageUrl}">

    <p>
        This template is for building apps based on the <a href="https://svelte.dev">Svelte framework</a> 
        and the <a href="https://parceljs.org">Parcel</a> build tool.
    </p>

    <p>

    </p>
</div>

<style>
</style>