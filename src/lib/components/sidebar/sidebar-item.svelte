<script lang="ts">
	import { goto } from '$app/navigation';
	import { Icon } from '$lib';

	export let label = 'Menu1';
	export let icon = '/placeholder.png';
	export let name = '';
	export let checked = false;
	export let route = '#';
</script>

<label>
	<input type="radio" {name} class="peer hidden" {checked} onchange={() => goto(route)} />
	<div
		class="hover:bg-primary-100 peer-checked:hover:bg-primary-400 text-black-100 peer-checked:bg-primary-300 m-1 flex h-fit items-center gap-x-4 rounded-lg p-2 text-lg font-medium"
	>
		<Icon size="1.5" src={icon} />
		<span class="">{label}</span>
	</div>
</label>
