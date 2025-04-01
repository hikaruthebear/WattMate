<script>
	import { Logo, Icon } from '$lib';

	export let label = 'label';
	export let name = '';
	export let icon = '/placeholder.png';
	export let iconSize = '2';
	export let checked = false;
</script>

<label for={label} class="text-black-50 text-[1rem]">
	<input {name} id={label} type="radio" class="peer hidden" {checked} />
	<div
		class="peer-checked:bg-primary-300 peer-checked:text-white-50 hover:bg-primary-50 peer-checked:hover:bg-primary-400 transition-color flex items-center gap-2 rounded-xl p-3 duration-200 ease-out peer-checked:font-[550]"
	>
		<Icon src={icon} size={iconSize} />
		<h1>{label}</h1>
	</div>
</label>
