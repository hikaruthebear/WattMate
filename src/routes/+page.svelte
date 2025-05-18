<script lang="ts">
	import { goto } from '$app/navigation';
</script>

{#snippet route(label: string, route: string)}
	<div class="border-white-600 w-20 rounded border-2 p-2 text-center">
		<button onclick={() => goto(route)}>{label}</button>
	</div>
{/snippet}

<div class="flex h-screen items-center justify-center gap-2">
	{@render route('Admin', './admin/dashboard')}
	{@render route('User', './user/dashboard')}
	{@render route('Login', 'login')}
</div>

<div class="h-full text-gray-800 antialiased bg-white">
	<main class="mx-auto max-w-5xl p-6">
		<h1 class="mb-6 text-2xl font-semibold">User List</h1>
		<div class="mb-10 overflow-x-auto rounded-lg border border-gray-200">
			<table class="min-w-full divide-y divide-gray-200 text-sm">
				<thead class="bg-gray-50 text-left tracking-wider text-gray-500 uppercase">
					<tr>
						<th class="px-4 py-2">Name</th>
						<th class="px-4 py-2">Contact Info</th>
						<th class="px-4 py-2">Address</th>
						<th class="px-4 py-2">Meter No</th>
						<th class="px-4 py-2">Status</th>
					</tr>
				</thead>
				<tbody class="divide-y divide-gray-100">
					<tr class="hover:bg-gray-50">
						<td class="px-4 py-3 font-medium text-gray-900">Jane Doe</td>
						<td class="px-4 py-3">
							<div class="text-gray-500">+1 234 567 8901</div>
							<div class="text-gray-400">jane@example.com</div>
						</td>
						<td class="px-4 py-3 text-gray-700">123 Elm Street, Springfield</td>
						<td class="px-4 py-3 text-gray-700">MT-00012345</td>
						<td class="px-4 py-3 font-medium text-green-600">Active</td>
					</tr>
					<tr class="hover:bg-gray-50">
						<td class="px-4 py-3 font-medium text-gray-900">John Smith</td>
						<td class="px-4 py-3">
							<div class="text-gray-500">+1 987 654 3210</div>
							<div class="text-gray-400">john@example.com</div>
						</td>
						<td class="px-4 py-3 text-gray-700">456 Oak Avenue, Lakeside</td>
						<td class="px-4 py-3 text-gray-700">MT-00098765</td>
						<td class="px-4 py-3 font-medium text-red-600">Inactive</td>
					</tr>
				</tbody>
			</table>
		</div>

		<h2 class="mb-4 text-xl font-semibold">Usage History</h2>
		<div class="mb-10 overflow-x-auto rounded-lg border border-gray-200">
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
					<tr class="hover:bg-gray-50">
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
					</tr>
				</tbody>
			</table>
		</div>

		<h2 class="mb-4 text-xl font-semibold">User Charges</h2>
		<div class="mb-10 overflow-x-auto rounded-lg border border-gray-200">
			<table class="min-w-full divide-y divide-gray-200 text-sm">
				<thead class="bg-gray-50 text-left tracking-wider text-gray-500 uppercase">
					<tr>
						<th class="px-4 py-2">Name</th>
						<th class="px-4 py-2">kWh Used</th>
						<th class="px-4 py-2">Amount</th>
						<th class="px-4 py-2">Status</th>
					</tr>
				</thead>
				<tbody class="divide-y divide-gray-100">
					<tr class="hover:bg-gray-50">
						<td class="px-4 py-3 text-gray-900">Jane Doe</td>
						<td class="px-4 py-3 text-gray-700">160</td>
						<td class="px-4 py-3 text-gray-700">$48.00</td>
						<td class="px-4 py-3 font-medium text-green-600">Paid</td>
					</tr>
					<tr class="hover:bg-gray-50">
						<td class="px-4 py-3 text-gray-900">John Smith</td>
						<td class="px-4 py-3 text-gray-700">140</td>
						<td class="px-4 py-3 text-gray-700">$42.00</td>
						<td class="px-4 py-3 font-medium text-yellow-600">Pending</td>
					</tr>
				</tbody>
			</table>
		</div>

		<h2 class="mb-4 text-xl font-semibold">Meter Readings</h2>
		<div class="overflow-x-auto rounded-lg border border-gray-200">
			<table class="min-w-full divide-y divide-gray-200 text-sm">
				<thead class="bg-gray-50 text-left tracking-wider text-gray-500 uppercase">
					<tr>
						<th class="px-4 py-2">Name</th>
						<th class="px-4 py-2">Previous Reading</th>
						<th class="px-4 py-2">Current Reading</th>
						<th class="px-4 py-2">Rate</th>
						<th class="px-4 py-2">Amount</th>
					</tr>
				</thead>
				<tbody class="divide-y divide-gray-100">
					<tr class="hover:bg-gray-50">
						<td class="px-4 py-3 text-gray-900">Jane Doe</td>
						<td class="px-4 py-3 text-gray-700">1200</td>
						<td class="px-4 py-3"
							><input type="number" class="w-24 rounded border border-gray-300 px-2 py-1" placeholder="Current" /></td
						>
						<td class="px-4 py-3"
							><input type="number" class="w-20 rounded border border-gray-300 px-2 py-1" placeholder="$" /></td
						>
						<td class="px-4 py-3 text-gray-700">--</td>
					</tr>
					<tr class="hover:bg-gray-50">
						<td class="px-4 py-3 text-gray-900">John Smith</td>
						<td class="px-4 py-3 text-gray-700">950</td>
						<td class="px-4 py-3"
							><input type="number" class="w-24 rounded border border-gray-300 px-2 py-1" placeholder="Current" /></td
						>
						<td class="px-4 py-3"
							><input type="number" class="w-20 rounded border border-gray-300 px-2 py-1" placeholder="$" /></td
						>
						<td class="px-4 py-3 text-gray-700">--</td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>
</div>
