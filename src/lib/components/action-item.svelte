<script>
	import { Icon } from '$lib';
	export let icon = '/placeholder.png';
	export let label = 'label';
	export let size = '2';
</script>

<div class="flex items-center text-black-600 rounded-2xl px-4 py-2 opacity-80 transition-all duration-300 ease-in-out">
	<Icon src={icon} {size} /><span>{label}</span>
</div>
