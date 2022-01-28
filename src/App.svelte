<script>
	import { Header, Footer, Button } from './components'
	import { Router, Link, Route } from "svelte-routing"
	import { Home, Content, Login, About } from './pages'
	export let url = '';
</script>

<Header/>

<Router url="{url}">
	<nav>
		<Link to="/">Home</Link>
		<Link to="/content">Content</Link>
		<Link to="/login">Login</Link>
		<Link to="/about">About</Link>
	</nav>
	<main>
		<Route path="/" component="{Home}" />
		<Route path="/content" component="{Content}" />
		<Route path="/login" component="{Login}" />
		<Route path="/about" component="{About}" />
	</main>
</Router>
<Footer/>

<style>
</style>