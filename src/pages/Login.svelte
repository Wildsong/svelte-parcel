<script>

</script>

<style>
    .accordion{
        background-color: aquamarine;
    }
</style>

<section class="svelte-login">
<div class="accordion">
    <div id="login_form">
        <h2>Sign in</h2>
        <form>
            <input type="hidden" id="oauth_state" name="oauth_state" value="">
            <input type="hidden" id="authorize" name="authorize" value="true">
            <input required id="username" type="text" name="username" placeholder="Username"><br/>
            <input required id="password" type="password" name="password" placeholder="Password"><br />
            <div class="flex">
            <button id="signin" name="signin">Sign In</button>
            </div>
        </form>
    </div>

    <div>
        <a href="forgotpassword">Forgot password?</a>
    </div>
</div>
</section>
