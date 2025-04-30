<script>
	import { Icon } from '$lib';
	// export let label = 'Total Amount paid';
	// export let amount = '200,000.00';
	// export let unit = '';
	// export let date = '';
	// export let icon = '/placeholder.png';

	let { label = '', amount = '', unit = '', date = '', icon = 'photo', sizepx = 32, iconColor = "" } = $props();
</script>

<div
	class="bg-white-50 hover:bg-primary-50 grid h-auto w-full min-w-[250px] 
	grid-cols-5 grid-rows-3 gap-5 rounded-xl p-6 drop-shadow-lg transition-all duration-300 ease-in-out hover:-translate-y-1"
>
	<div class="col-span-4 w-full text-lg font-medium">{label}</div>
	<div class="text-text/90 col-span-5 col-start-1 row-span-2 row-start-2 flex items-center text-3xl font-semibold">
		{#if unit === 'kWh'}
			{amount}{unit}
		{:else if unit === 'date'}
			{date}
		{:else}
			₱{amount}
		{/if}
	</div>
	<div class=" col-start-5 row-start-1"><Icon {sizepx} {icon} color={iconColor}/></div>
</div>
