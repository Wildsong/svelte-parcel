<script>
    var alert_message = "";

    const logoUrl = new URL(
        '../assets/favicon.png?width=32',
        import.meta.url
    )

    var validation = (data) => {
        var a = data.username;
        var b = data.password;
        // Make sure your username and password rules are met here...
        if(data.password.length < 8) {
            alert_message = "Password is too short."
            return false;
        }
        return true;
    }

    var onSubmit = (e) => {
        const formData = new FormData(e.target);
        const data = [];
        for (let field of formData) {
            const [k,v] = field;
            data[k] = v;
        }
        if (!validation(data)) {
        
        } else {
            alert_message = "You are logged in."
            alert("You are now logged in.");
        }
    }
</script>


<div class="container">
    <div class="login">
        <h2>
            <img alt="logo" src="{logoUrl}">
            Sign in
        </h2>
        <form on:submit|preventDefault={onSubmit}>
            <fieldset>
                <div class="alert-message" id="error-message">{alert_message}</div>
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
    .alert-message {
        color: red;
        border: 0;
        margin-bottom: 8px;
        padding: 2px;
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
