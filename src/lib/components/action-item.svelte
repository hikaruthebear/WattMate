<script>
	import { Icon } from '$lib';
	export let icon = '/placeholder.png';
	export let label = '';
	export let size = '2';
	export let onclick = () => {console.log('clicked')};
</script>

<div class="flex items-center text-black-600 rounded-2xl opacity-80 transition-all duration-300 ease-in-out gap-2" 
{onclick}
>
	<Icon src={icon} {size} /><span>{label}</span>
</div>
