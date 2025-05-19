<script>
	import { UserSidebar, UserHeader, Heading } from '$lib';

	let sidebar = false;

	let toggleSidebar = () => {
		sidebar = !sidebar;
	};

	// Dummy data for user bills
	const userBills = [
		{
			date: '2025-01-01',
			previous: 1200,
			current: 1300,
			kwh: 100,
			amount: 1500,
			status: 'Paid'
		},
		{
			date: '2025-02-01',
			previous: 1300,
			current: 1400,
			kwh: 100,
			amount: 1600,
			status: 'Pending'
		}
	];

</script>

<div class="flex h-[100dvh] flex-col overflow-hidden">
	<header class="fixed z-10 h-fit w-full bg-blue-500">
		<UserHeader onclick={toggleSidebar} />
	</header>
	<div class="flex h-full">
		<div class=" fixed h-full w-64 shrink-0 bg-green-500 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<UserSidebar />
		</div>
		<main class="bg-white-200 mt-10 flex w-full flex-col gap-5 overflow-y-auto p-5 md:mt-20">
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<Heading heading="Bill History" />
				<div class="overflow-x-auto rounded-lg border border-gray-200 mt-4">
					<table class="min-w-full divide-y divide-gray-200 text-sm">
						<thead class="bg-gray-50 text-left uppercase tracking-wider text-gray-500">
							<tr>
								<th class="px-4 py-2">Date</th>
								<th class="px-4 py-2">Previous Reading</th>
								<th class="px-4 py-2">Current Reading</th>
								<th class="px-4 py-2">kWh Used</th>
								<th class="px-4 py-2">Amount</th>
								<th class="px-4 py-2">Status</th>
							</tr>
						</thead>
						<tbody class="divide-y divide-gray-100">
							{#each userBills as bill}
								<tr class="hover:bg-gray-50">
									<td class="px-4 py-3 text-gray-700">{bill.date}</td>
									<td class="px-4 py-3 text-gray-700">{bill.previous}</td>
									<td class="px-4 py-3 text-gray-900">{bill.current}</td>
									<td class="px-4 py-3 text-gray-700">{bill.kwh}</td>
									<td class="px-4 py-3 font-medium text-yellow-600">₱{bill.amount}</td>
									<td class="px-4 py-3 font-medium {bill.status === 'Paid' ? 'text-green-600' : 'text-yellow-600'}">{bill.status}</td>
								</tr>
							{/each}
						</tbody>
					</table>
				</div>
			</div>
		</main>
	</div>
</div>
