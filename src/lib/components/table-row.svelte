<script>
	export let column1 = 'column 1';
	export let column2 = 'column 2';
	export let column3 = 'column 3';
	export let column4 = 'column 4';
</script>

<div class="grid grid-cols-4 grid-rows-1 gap-4 p-2 text-text-light">
	<div>{column1}</div>
	<div>{column2}</div>
	<div>{column3}</div>
	<div class="bg-primary/70 w-fit py-1 px-3 rounded-xl">{column4}</div>
</div>
<hr class="m-2 text-text/30">
