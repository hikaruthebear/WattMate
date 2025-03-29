<script>
	import { Icon } from '$lib';
	export let icon = '/placeholder.png';
	export let label = 'label';
	export let size = '2';
</script>

<div
	class="text-text hover:bg-text/10 flex items-center rounded-2xl px-4 py-2 opacity-80 transition-all duration-300 ease-in-out"
>
	<Icon src={icon} {size} /><span>{label}</span>
</div>
