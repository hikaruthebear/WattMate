<script>
	import { ActionItem } from '$lib';
	export let column1 = 'column 1';
	export let column2 = 'column 2';
	export let column3 = 'column 3';
	export let column4 = 'column 4';
	export let style = '';
</script>

<div
	class="text-text-light hover:bg-primary-300/40 grid grid-cols-[1fr_1fr_1fr_32px] grid-rows-1 items-center gap-4 rounded-lg p-2 md:grid-cols-[1fr_1fr_1fr_1fr_32px]
{style} "
> 
	<div>{column1}</div>
	<div>{column2}</div>
	<div>{column3}</div>
	<div class=" text-success-500 hidden w-fit rounded-xl px-3 py-1 font-bold md:inline">{column4}</div>
	<ActionItem icon="/icons/option.png" size="1"/>
</div>
<hr class="text-black-100/30 m-2" />
