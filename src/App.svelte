<script>
	import { Header, Footer, Button } from './components'
	import { Router, Link, Route } from "svelte-routing"
	import About from './pages/About.svelte'
	import Home from './pages/Home.svelte'
	const clatsop_county = [-123.75, 46.04];
	const zoom = 9;
	export let url = '';
</script>

<Header/>
<Router url="{url}">
	<nav>
		<Link to="/">Home</Link>
		<Link to="/about">About</Link>
	</nav>
	<main>
		<Route path="/" component="{Home}" />
		<Route path="about" component="{About}" />
	</main>
</Router>
<Footer/>

<style>
	main {
		padding: 1em;
		margin: 0 auto;
	}
	.footer {
		width: 800px;
	}
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>