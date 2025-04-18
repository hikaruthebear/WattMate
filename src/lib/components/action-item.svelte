<script>
	import { Icon } from '$lib';
	export let icon = '/placeholder.png';

	export let label = '';
	export let size = '2';
	export let onclick = () => {
		console.log('clicked');
	};
</script>

<!-- svelte-ignore a11y_no_static_element_interactions -->
<!-- svelte-ignore a11y_click_events_have_key_events -->
<div
class="text-black-600 hover:bg-primary-200 flex items-center gap-2 rounded-xl transition-all duration-100 ease-in-out"
	{onclick}
>
	<Icon src={icon} {size} />
	<div>{label}</div>
</div>
