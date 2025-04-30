<script lang="ts">
	import { goto } from '$app/navigation';
	import { Icon } from '$lib';
	import { page } from '$app/state';

	let { label = '', icon = '', name = '', route = '#', iconColor = '', sizepx = 32 } = $props();

	let isActive = $state(false);
	isActive = page.url.pathname === route;
</script>

<label>
	<input type="radio" {name} class="peer hidden" checked={isActive} onchange={() => goto(route)} />
	<div
		class="hover:bg-primary-100 peer-checked:hover:bg-primary-400 text-black-100 peer-checked:bg-primary-300
		 m-1 flex h-fit items-center gap-x-2 rounded-lg p-2 text-lg font-medium"
	>
		<Icon {sizepx} {icon} color={iconColor} {isActive} />
		<span class="">{label}</span>
	</div>
</label>
