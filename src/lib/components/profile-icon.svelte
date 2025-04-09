<script>
	import { Icon } from '$lib';
	export let size = '2';
	export let label = 'label';
	export let style = '';
</script>

<div
	class="bg-primary-300 md:rounded-5xl flex h-8 w-auto items-center justify-center gap-1 rounded-full p-3 text-[8px] md:w-auto md:text-[12px] md:h-12"
>
	<Icon {size} />
	<span class="hidden md:inline">{label}</span>
</div>

<!-- class="bg-primary-300  hover:bg-primary-400 flex items-center gap-1 rounded-3xl px-4 py-3 
	text-sm transition-all duration-300 ease-in-out  -->
