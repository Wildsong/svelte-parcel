<script>
	import { Header, Footer, Button } from './components'
	import { OpenLayersMap } from './components'
	import { Router, Link, Route } from "svelte-routing"
	import About from './pages/About.svelte'
	const clatsop_county = [-123.75, 46.04];
	const zoom = 9;
	export let url = '';
</script>

<main>
	<Header/>
	<Router url="{url}">
		<nav>
			<Link to="/">Home</Link>
			<Link to="/about">About</Link>
		</nav>
	</Router>
	<h1>svelte-parcel template</h1>
	<div class="footer">
		<p>
			This template is for building apps based on the <a href="https://svelte.dev">Svelte framework</a> 
			and the <a href="https://parceljs.org">Parcel</a> build tool.
		</p>
		<p>
			Try this: <code>npx degit wildsong/svelte-parcel</code>
		</p>
	</div>

	<div class="mapcontainer">
		<OpenLayersMap center={clatsop_county} zoom={zoom}/>
	</div>
	<Button/>
	<Footer/>
</main>

<style>
	main {
		padding: 1em;
		margin: 0 auto;
	}
	.footer {
		width: 800px;
	}
	.mapcontainer {
		display: flex;
		margin: 2px;
	}
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>