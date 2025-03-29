<script>
	import { Logo, Icon } from '$lib';

	export let label = 'label';
	export let name = '';
	export let icon = '/placeholder.png';
	export let iconSize = '2';
	export let checked = false;
</script>

<label for={label} class="text-text/70 text-[1rem]">
	<input {name} id={label} type="radio" class="peer hidden" {checked}/>
	<div
		class="peer-checked:bg-primary peer-checked:text-background hover:bg-primary/50 peer-checked:font-[550] peer-checked:hover:bg-primary/70 flex items-center gap-2 rounded-xl p-3 transition-color duration-200 ease-out"
	>
		<Icon src={icon} size={iconSize} />
		<h1>{label}</h1>
	</div>
</label>
