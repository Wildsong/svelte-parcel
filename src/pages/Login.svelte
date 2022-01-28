<script>
    import Auth, {init, browserStrategy, AuthorizationCodePKCE, addAuthHeader } from "@macfja/svelte-oauth2"

    init(
        browserStrategy,
        new AuthorizationCodePKCE(
            '$$github client id$$',
            'http://localhost:1234/',
            'https://github.com/oauth/token',
            'https://github.com/oauth/authorize',
            'http://localhost:1234/'
        )
    )

    let Username
    const getUserName = () => {
        addAuthHeader().then(headers => {
            fetch('https://github.com/api/v4/user', { headers })
            .then(response => response.json())
            .then(response => username = response.username)
        })
    }
</script>

<Auth scopes={['read_user']} on:authenticated={getUserName}>
    <div slot="loading">Loading...</div>
    <div slot="error" let:error>{error.message}</div>
    Hello {username}!
</Auth>


<style>
</style>
