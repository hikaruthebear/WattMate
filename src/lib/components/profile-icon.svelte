<script>
	import { Icon } from '$lib';
	export let size = '1';
	export let label = 'label';
	export let style = '';
</script>

<div
	class="bg-primary-300  hover:bg-primary-400 flex items-center gap-1 rounded-3xl px-4 py-3 text-sm transition-all duration-300 ease-in-out {style}"
>
	<Icon {size} />

	<span>{label}</span>
</div>
