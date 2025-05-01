<script>
	import { Icon } from '$lib';

	let { iconSize = 32, icon = '', iconColor = '', label = '', onclick } = $props();
</script>

<div
	class="bg-primary-300 md:rounded-5xl flex h-8 w-auto items-center
	justify-center gap-1 rounded-full p-3 text-[8px] md:h-12 md:w-auto md:text-[12px]"
	role="button"
	tabindex="0"
	{onclick}
	onkeydown={() => {}}
>
	<Icon sizepx={iconSize} {icon} color={iconColor} />
	<span class="hidden md:inline">{label}</span>
</div>
