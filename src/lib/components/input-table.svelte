<script lang="ts">
</script>

{#snippet Td()}
	<td class="border border-gray-300 p-0">
		<input type="number" class="w-full rounded-none border-none p-2 focus:ring-0" />
	</td>
{/snippet}

{#snippet Th(label: string)}
	<th class="border border-gray-300 p-2 text-left font-medium">{label}</th>
{/snippet}

{#snippet Row()}
	<tr>
		{@render Td()}
		{@render Td()}
		{@render Td()}
		{@render Td()}
	</tr>
{/snippet}

{#snippet Head()}
	<thead class="bg-gray-100">
		<tr>
			{@render Th('Head 1')}
			{@render Th('Head 2')}
			{@render Th('Head 3')}
			{@render Th('Head 4')}
		</tr>
	</thead>
{/snippet}

<div class="overflow-x-auto bg-white ">
	<table class="w-full border-collapse rounded-2xl">
		{@render Head()}
		{@render Row()}
		{@render Row()}
		{@render Row()}
	</table>
</div>

<style>
	input[type='number']::-webkit-outer-spin-button,
	input[type='number']::-webkit-inner-spin-button {
		-webkit-appearance: none;
		margin: 0;
	}

	input[type='number'] {
		-moz-appearance: textfield;
	}
</style>
