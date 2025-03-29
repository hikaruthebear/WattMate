<script>
	import { Icon } from '$lib';
	export let size = '1';
	export let label = 'label';
</script>

<div class="bg-primary px-4 flex items-center rounded-3xl py-3 gap-1 text-sm hover:bg-primary-dark transition-all duration-300 ease-in-out">
	
		<Icon {size} />
	
	<span>{label}</span>
</div>
