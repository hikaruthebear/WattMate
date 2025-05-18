<script lang="ts">
	import { Heading, ActionItem } from '$lib';
	import axios from 'axios';
	
	const apiUrl = import.meta.env.apiUrl;
	let tableEditMode = $state(false);

	// axios.get(`${apiUrl}`)


	interface Bill {
		date: string;
		totalKwhUsed: number;
		totalAmount: string;
		status: string;
	}

let Bills : Bill[] = [
	{
		date: '2025-05-01',
		totalKwhUsed: 150,
		totalAmount: '$45.00',
		status: 'paid'
	},
	{
		date: '2025-04-01',
		totalKwhUsed: 175,
		totalAmount: '$52.50',
		status: 'pending'
	},
	{
		date: '2025-03-01',
		totalKwhUsed: 200,
		totalAmount: '$60.00',
		status: 'unpaid'
	}];

	const openTable = () => {
		const tableList = document.getElementById('table-list');
		const table = document.getElementById('table');

		table?.classList.remove('hidden');
		tableList?.classList.add('hidden');
	};

	const back = () => {
		const tableList = document.getElementById('table-list');
		const table = document.getElementById('table');

		table?.classList.add('hidden');
		tableList?.classList.remove('hidden');
	};
</script>

{#snippet tableListRow(Bill: Bill)}
	<tr class="hover:bg-gray-50 hover:underline" onclick={openTable}>
		<td class="px-4 py-3 text-gray-900">{Bill.date}</td>
		<td class="px-4 py-3 text-gray-700">{Bill.totalKwhUsed}</td>
		<td class="px-4 py-3 text-gray-700">{Bill.totalAmount}</td>
		<td
			class="px-4 py-3 font-medium
    {Bill.status === 'paid' ? 'text-green-600' : Bill.status === 'pending' ? 'text-yellow-600' : 'text-red-600'}
    ">{Bill.status}</td
		>
	</tr>
{/snippet}

<div class="mb-10" id="table-list">
	<div class="mb-4 flex items-center justify-between pr-4">
		<Heading heading="Tables" />
		<ActionItem icon="post_add" onclick={() => {}}/>
	</div>
	<div class="overflow-x-auto rounded-lg border border-gray-200">
		<table class="min-w-full divide-y divide-gray-200 text-sm">
			<thead class="bg-gray-50 text-left tracking-wider text-gray-500 uppercase">
				<tr>
					<th class="px-4 py-2">Date</th>
					<th class="px-4 py-2">Total kWh Used</th>
					<th class="px-4 py-2">Total Amount</th>
					<th class="px-4 py-2">Status</th>
				</tr>
			</thead>
			<tbody class="divide-y divide-gray-100">
				<!-- <tr class="hover:bg-gray-50 hover:underline">
          <td class="px-4 py-3 text-gray-900">2025-05-01</td>
          <td class="px-4 py-3 text-gray-700">150</td>
          <td class="px-4 py-3 text-gray-700">$45.00</td>
          <td class="px-4 py-3 font-medium text-green-600">Paid</td>
        </tr>
        <tr class="hover:bg-gray-50">
          <td class="px-4 py-3 text-gray-900">2025-04-01</td>
          <td class="px-4 py-3 text-gray-700">175</td>
          <td class="px-4 py-3 text-gray-700">$52.50</td>
          <td class="px-4 py-3 font-medium text-yellow-600">Pending</td>
        </tr> -->
				{#each Bills as Bill}
					{@render tableListRow(Bill)}
				{/each}
			</tbody>
		</table>
	</div>
</div>

{#snippet tableRow(tableEditMode: boolean)}
	<tr class="hover:bg-gray-50">
		<td class="px-4 py-3 text-gray-900">John Smith</td>
		<td class="px-4 py-3 text-gray-700"
			><input
				type="number"
				class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2"
				value="200"
				disabled={!tableEditMode}
			/></td
		>
		<td class="px-4 py-3 text-gray-900"
			><input
				type="number"
				class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2"
				value="200"
				disabled={!tableEditMode}
			/></td
		>
		<td class="px-4 py-3 text-gray-700"
			><input
				type="number"
				class="rounded-lg border-0 bg-transparent ring-blue-400/60 focus:ring-2"
				value="200"
				disabled={!tableEditMode}
			/></td
		>
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
				console.log(tableEditMode);
			}}
		/>
	</div>
	<div class="mb-10 overflow-x-auto rounded-lg border border-gray-200">
		<table class="min-w-full divide-y divide-gray-200 text-sm">
			<thead class="bg-gray-50 text-left tracking-wider text-gray-500 uppercase">
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
