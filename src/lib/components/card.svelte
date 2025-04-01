<script>
	import { Icon } from '$lib';
	export let label = 'Total Amount paid';
	export let amount = '200,000.00';
</script>

<div class="bg-white-50 grid h-auto w-full min-w-[240px] grid-cols-5 grid-rows-3 gap-5 rounded-xl p-5 hover:bg-primary-200 transition-all duration-300 ease-in-out  hover:-translate-y-1 ">
	<div class="col-span-4 text-lg font-medium w-full">{label}</div>
	<div class="text-text/90 col-span-5 col-start-1 row-span-2 row-start-2 flex items-center text-3xl font-semibold">
		₱{amount}
	</div>
	<div class=" col-start-5 row-start-1"><Icon size="1.5" />
  </div>
</div>
