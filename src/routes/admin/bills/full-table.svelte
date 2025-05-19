<script lang="ts">
	import { ActionItem } from '$lib';
	let tableEditMode = $state(false);
</script>

{#snippet tableRow(tableEditMode: boolean)}
	<tr class="hover:bg-gray-50">
		<td class="px-4 py-3 text-gray-900">John Smith</td>
		<td class="px-4 py-3 text-gray-700"><input type="number" class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2" value="200" disabled={!tableEditMode} /> </td>
		<td class="px-4 py-3 text-gray-900"><input type="number" class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2" value="200" disabled={!tableEditMode} /></td>
		<td class="px-4 py-3 text-gray-700"><input type="number" class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2" value="200" disabled={!tableEditMode} /></td>
		<td class="px-4 py-3 font-medium text-yellow-600">2000</td>
		<td class="px-4 py-3 font-medium text-yellow-600">Pending</td>
	</tr>
{/snippet}

<div class="hidden" id="table">
	<div class="mb-4 flex items-center justify-between pr-4 text-center">
		<div class="flex items-center">
			<ActionItem icon="arrow_back_ios" iconSize={24} onclick={back} />
			<h1 class="text-2xl font-black">Bill of May</h1>
		</div>
		<ActionItem
			icon="table_edit"
			isActive={tableEditMode}
			onclick={() => {
				tableEditMode = !tableEditMode;
			}}
		/>
	</div>
	<div class="mb-10 overflow-x-auto rounded-lg border border-gray-200">
		<table class="min-w-full divide-y divide-gray-200 text-sm">
			<thead class="bg-gray-50 text-left uppercase tracking-wider text-gray-500">
				<tr>
					<th class="px-4 py-2">Name</th>
					<th class="px-4 py-2">Previous Reading</th>
					<th class="px-4 py-2">Current Reading</th>
					<th class="px-4 py-2">kWh Used</th>
					<th class="px-4 py-2">Amount</th>
					<th class="px-4 py-2">Status</th>
				</tr>
			</thead>
			<tbody class="divide-y divide-gray-100">
				{@render tableRow(tableEditMode)}
			</tbody>
		</table>
	</div>
</div>
