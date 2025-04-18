<script lang="ts">
	import { goto } from '$app/navigation';
	import { Icon } from '$lib';
	import { page } from '$app/state';

	export let label = 'Menu1';
	export let icon = '/placeholder.png';
	export let name = '';
	export let route = '#';


	let currentIcon = icon;

	$: isActive = page.url.pathname === route;
	$: currentIcon = isActive ? icon.replace('.png', '-active.png') : icon;
</script>

<label>
	<input type="radio" {name} class="peer hidden" checked={isActive} onchange={() => goto(route)} />
	<div
		class="hover:bg-primary-100 peer-checked:hover:bg-primary-400 text-black-100 peer-checked:bg-primary-300 m-1 flex h-fit items-center gap-x-4 rounded-lg p-2 text-lg font-medium"
	>
		<Icon size="1.5" src={currentIcon} />
		<span class="">{label}</span>
	</div>
</label>
