<script lang="ts">
</script>


{#snippet Td()}
	<td class="border border-gray-300 p-2">
		<input type="text" class="w-full rounded-none border-none p-2 focus:ring-0" />
	</td>
{/snippet}

{#snippet Row()}
	<tr>
		<td class="border border-gray-300 p-2">
			<input type="text" class="w-full rounded-none border-none p-2 focus:ring-0" />
		</td>
		<td class="border border-gray-300 p-2">
			<input type="text" class="w-full rounded-none border-none p-2 focus:ring-0" />
		</td>
		<td class="border border-gray-300 p-2">
			<input type="text" class="w-full rounded-none border-none p-2 focus:ring-0" />
		</td>
	</tr>
{/snippet}

{#snippet Head()}
	<thead class="bg-gray-100">
		<tr>
			<th class="border border-gray-300 p-3 text-left font-medium">Header 1</th>
			<th class="border border-gray-300 p-3 text-left font-medium">Header 2</th>
			<th class="border border-gray-300 p-3 text-left font-medium">Header 3</th>
		</tr>
	</thead>
{/snippet}

<div class="overflow-x-auto bg-white">
	<table class="w-full table-auto border-collapse">
		{@render Head()}
		{@render Row()}
		{@render Row()}
		{@render Row()}
		{@render Row()}
	</table>
</div>
