<script>
	import { Header, Footer, Button } from './components'
	import { Router, Link, Route } from "svelte-routing"
	import { Home, About, Login } from './pages'
	export let url = '';
</script>

<Header/>
<Router url="{url}">
	<nav>
		<Link to="/">Home</Link>
		<Link to="/login">Login</Link>
		<Link to="/about">About</Link>
	</nav>
	<main>
		<Route path="/" component="{Home}" />
		<Route path="/login" component="{Login}" />
		<Route path="about" component="{About}" />
	</main>
</Router>
<Footer/>

<style>
	main {
		padding: 1em;
		margin: 0 auto;
	}
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>