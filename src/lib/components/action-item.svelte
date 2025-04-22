<script>
	import { Icon } from '$lib';
	let { icon = '/placeholder.png', label = '', size = '2', onclick = () => {} } = $$props;
	
</script>

<div
	class="text-black-600 hover:bg-primary-200 flex items-center gap-2 rounded-xl transition-all duration-100 ease-in-out"
	{onclick} role="button" tabindex="0" onkeydown={onclick} 
>
	<Icon src={icon} {size} />
	<div>{label}</div>
</div>
