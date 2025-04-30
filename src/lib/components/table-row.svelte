<script>
	import { ActionItem } from '$lib';

	let { col1 = ' ', col2 = '', col3 = '', col4 = '', style = "", onclick, iconOnclick } = $props();
</script>

<div
	class="text-text-light hover:bg-primary-300/40 grid grid-cols-[1fr_1fr_1fr_32px] grid-rows-1 items-center gap-4 rounded-lg p-2 md:grid-cols-[1fr_1fr_1fr_1fr_32px]
{style} "
	role="button"
	tabindex="0"
	onkeydown={onclick}
	{onclick}
>
	<div>{col1}</div>
	<div>{col2}</div>
	<div>{col3}</div>
	<div class=" text-success-500 hidden w-fit rounded-xl px-3 py-1 font-bold md:inline">{col4}</div>
	<ActionItem icon="more_vert" iconSizes="14" onclick={iconOnclick}/>
</div>
<hr class="text-black-100/30 m-2" />
