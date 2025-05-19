<script lang="ts">
	import { Heading, ActionItem, AddTable } from '$lib';
	import BillSheet from './full-table.svelte';
	import axios from 'axios';
	import { onMount } from 'svelte';

	let tableEditMode = $state(false);
	let addTable = $state(false);
	let openedTable = $state<Bill>({
		Date: '',
		TotalKwhUsed: 0,
		TotalAmount: '',
		Status: ''
	});

	interface Bill {
		Date: string;
		TotalKwhUsed: number;
		TotalAmount: string;
		Status: string;
	}

	let Bills: Bill[] = $state([]);
	
	onMount(async () => {
		try {
			const response = await axios.get(apiUrl + '/?action=fetch_bill_summary');
			Bills = response.data.billSummary;
		} catch {
			console.error('Error fetching bill summary:', Response.error);
		}
	});

	const apiUrl = 'http://localhost:8080';

	const openTable = (bill: Bill) => {
		const tableList = document.getElementById('table-list');
		const table = document.getElementById('table');

		table?.classList.remove('hidden');
		tableList?.classList.add('hidden');

		openedTable = bill;
		console.log('open : ', openedTable.TotalKwhUsed);
	};

	const back = () => {
		const tableList = document.getElementById('table-list');
		const table = document.getElementById('table');

		table?.classList.add('hidden');
		tableList?.classList.remove('hidden');
	};
</script>

<div class="z-11 fixed left-0 right-0 top-0">
	<AddTable
		isOpen={addTable}
		close={() => {
			addTable = false;
		}}
	/>
</div>

<div class="mb-10" id="table-list">
	<div class="mb-4 flex items-center justify-between pr-4">
		<Heading heading="Tables" />
		<ActionItem
			icon="post_add"
			onclick={() => {
				addTable = true;
			}}
		/>
	</div>
	<div class="overflow-x-auto rounded-lg border border-gray-200">
		<table class="min-w-full divide-y divide-gray-200 text-sm">
			<thead class="bg-gray-50 text-left uppercase tracking-wider text-gray-500">
				<tr>
					<th class="px-4 py-2">Date</th>
					<th class="px-4 py-2">Total kWh Used</th>
					<th class="px-4 py-2">Total Amount</th>
					<th class="px-4 py-2">Status</th>
				</tr>
			</thead>
			<tbody class="divide-y divide-gray-100">
				{#each Bills as Bill}
					{@render tableListRow(Bill)}
				{/each}
			</tbody>
		</table>
	</div>
</div>

{#snippet tableListRow(Bill: Bill)}
	<tr
		class="hover:bg-gray-50 hover:underline"
		onclick={() => {
			openTable(Bill);
		}}
	>
		<td class="px-4 py-3 text-gray-900">{Bill.Date}</td>
		<td class="px-4 py-3 text-gray-700">{Bill.TotalKwhUsed}</td>
		<td class="px-4 py-3 text-gray-700">{Bill.TotalAmount}</td>
		<td
			class="px-4 py-3 font-medium
    {Bill.Status === 'paid' ? 'text-green-600' : Bill.Status === 'pending' ? 'text-yellow-600' : 'text-red-600'}
    ">{Bill.Status}</td
		>
	</tr>
{/snippet}
