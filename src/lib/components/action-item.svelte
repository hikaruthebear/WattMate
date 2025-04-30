<script>
	import { Icon } from '$lib';
	let { icon = 'photo', label = '', iconSize = 32, iconColor = '', onclick = () => {}, isActive = false } = $$props;
</script>

<div
	class="text-black-600 hover:bg-primary-200 flex items-center gap-2 rounded-xl transition-all duration-100 ease-in-out"
	{onclick}
	role="button"
	tabindex="0"
	onkeydown={onclick}
>
	<Icon {icon} sizepx={iconSize} color={iconColor} {isActive} />
	{#if label !== ''}
		<div>{label}</div>
	{/if}
</div>
