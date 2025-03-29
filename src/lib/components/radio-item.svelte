<script>
	import { Logo, Icon } from '$lib';

	export let label = 'label';
	export let name = '';
	export let icon = '/placeholder.png';
	export let iconSize = '2';
</script>

<label for={label} class="text-text/70 text-[1rem] font-[550]">
	<input {name} id={label} type="radio" class="peer hidden" />
	<div
		class="peer-checked:bg-primary peer-checked:text-background hover:bg-secondary/20 peer-checked:hover:bg-primary/70 flex items-center gap-2 rounded-xl p-3 transition-all duration-200 ease-out"
	>
		<Icon src={icon} size={iconSize} />
		<h1>{label}</h1>
	</div>
</label>
