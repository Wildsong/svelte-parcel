<script>
	import { Button } from '../components'
	import { OpenLayersMap } from '../components'
	const clatsop_county = [-123.75, 46.04];
	const zoom = 9;
</script>

<h1>Here is a map</h1>

Every app needs a map.

<div class="mapcontainer">
    <OpenLayersMap center={clatsop_county} zoom={zoom}/>
</div>

<Button/>

<style>
	.mapcontainer {
		display: flex;
		margin: 2px;
	}
</style>