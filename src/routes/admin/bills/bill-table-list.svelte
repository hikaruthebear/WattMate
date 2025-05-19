<script lang="ts">
	import { Heading, ActionItem, AddTable } from '$lib';
	import BillSheet from './full-table.svelte';
	import axios from 'axios';
	import { onMount } from 'svelte';

	let tableEditMode = $state(false);
	let addTable = $state(false);

	let openedTable = $state();

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

	const openTable = async (bill: Bill) => {
		const tableList = document.getElementById('table-list');
		const table = document.getElementById('table');

		table?.classList.remove('hidden');
		tableList?.classList.add('hidden');

		try {
			const response = await axios.get(`${apiUrl}/?action=fetch_bill_by_date&date=${bill.Date}`);
			openedTable = response.data;
			console.log(openedTable);
		} catch {
			console.error('Error fetching bill by date:', Response.error);
		}
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

<div class="hidden" id="table">
	<div class="mb-4 flex items-center justify-between pr-4 text-center">
		<div class="flex items-center">
			<ActionItem icon="arrow_back_ios" iconSize={24} onclick={() => {}} />
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
				
				{#each openedTable as row}

					{@render tableRow(tableEditMode, row)}
				{/each}
			</tbody>
		</table>
	</div>
</div>

{#snippet tableRow(tableEditMode: boolean, row: any)}
	<tr class="hover:bg-gray-50">
		<td class="px-4 py-3 text-gray-900">{row.Name}</td>
		<td class="px-4 py-3 text-gray-700"><input type="number" class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2" bind:value={row.PreviousReading} disabled={!tableEditMode} /> </td>
		<td class="px-4 py-3 text-gray-900"><input type="number" class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2" bind:value={row.CurrentReading} disabled={!tableEditMode} /></td>
		<td class="px-4 py-3 text-gray-700"><input type="number" class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2" bind:value={row.kWh_Used} disabled={!tableEditMode} /></td>
		<td class="px-4 py-3 font-medium text-yellow-600">{row.Amount}</td> 
		<td class="px-4 py-3 font-medium text-yellow-600">Pending</td> 
	</tr>
{/snippet}

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
