<script>
    const logoUrl = new URL(
        '../assets/favicon.png?width=32',
        import.meta.url
    )
</script>

<style>
    * {
        box-sizing: border-box;
    }
    .container {
        padding: 3em;
    }
    h2 {
        padding-left: 0.4em;
    }
    .login {
        display: flex;
        flex-direction: column;
        width: 25em;
        background-color: rgb(219, 223, 231);
        box-shadow: 0.1rem 0.1rem 2.8rem 0.01rem;
        padding: 0px 5px 7px 5px;
        margin: 0 auto 0 auto;
    }
    fieldset {
        box-sizing: content-box;
        overflow: hidden;
        padding: 2px;
        border: none;
    }
    input {
        width: 100%;
    }
    #signin-button {
        width:100%;
        color: #eee;
        background-color: #524bbb;
        -webkit-padding: 0.4em 0;
        padding: 0.4em;
        outline: none;
        border: none;
    }
</style>
<div class="container">
    <div class="login">
        <h2>
            <img alt="logo" src="{logoUrl}">
            Sign in
        </h2>
        <div class="alert-message" id="error-message"></div>
        <form>
            <fieldset>
                <input type="hidden" id="oauth_state" name="oauth_state" value="">
                <input type="hidden" id="authorize" name="authorize" value="true">
                <input required type="text" name="username" placeholder="Username"><br/>
                <input required type="password" name="password" placeholder="Password"><br />
                <button type="submit" id="signin-button" name="signin">Sign In</button>
            </fieldset>
        </form>
        <div>
            <a href="forgotpassword">Forgot password?</a>
        </div>
    </div>
</div>
