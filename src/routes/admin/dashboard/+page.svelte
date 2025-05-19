<script lang="ts">
	import axios from 'axios';
	import { AdminSidebar, Card, AdminHeader, AddPayment } from '$lib';
	import { onMount } from 'svelte';

	let sidebar = $state(true);
	let addPaymentModal = $state(false);

	const apiUrl = 'http://localhost:8080';

	// Data for cards
	let totalAmountPaid: number = 0;
	let currentBill: number = 0;
	let monthlyRate: number = 19.50; // Placeholder
	let totalKilowatts: number = 0;
	let editKilowatts = false;
	let kilowattsInput: string = '';

	type BillSummary = {
		Date: string;
		TotalAmount: number;
		TotalKwhUsed: number;
		AverageRate: number;
	};

	let billHistory: BillSummary[] = [];

	onMount(async () => {
		try {
			const response = await axios.get(apiUrl + '/?action=fetch_bill_summary');
			if (response.data && !response.data.error) {
				billHistory = response.data.billSummary;
				// Total Amount Paid: sum of all TotalAmount
				totalAmountPaid = billHistory.reduce((sum, bill) => sum + (bill.TotalAmount || 0), 0);
				// Current Bill: latest bill's TotalAmount
				if (billHistory.length > 0) {
					const latest = billHistory[billHistory.length - 1];
					currentBill = latest.TotalAmount;
				}
				// Total Kilowatts: sum of all TotalKwhUsed
				totalKilowatts = billHistory.reduce((sum, bill) => sum + (bill.TotalKwhUsed || 0), 0);
				kilowattsInput = String(totalKilowatts);
			}
		} catch (error) {
			console.error('Error fetching bill data:', error);
		}
	});

	function handleEditKilowatts() {
		editKilowatts = true;
	}

	function saveKilowatts() {
		const value = parseFloat(kilowattsInput);
		if (!isNaN(value)) {
			totalKilowatts = value;
		}
		editKilowatts = false;
	}

	function formatCurrency(amount: number): string {
		return Number(amount).toLocaleString('en-PH', { style: 'currency', currency: 'PHP' });
	}

</script>

<AddPayment isOpen={addPaymentModal} close={() => (addPaymentModal = false)} />

<div class="flex h-[100dvh] flex-col overflow-hidden bg-red-500">
	<header class="fixed z-10 h-fit w-full bg-blue-500">
		<AdminHeader burgerEvent={() => (sidebar = !sidebar)} />
	</header>
	<div class="flex h-full">
		<div
			class=" fixed h-full w-64 shrink-0 bg-green-500/0 md:relative
			{sidebar ? 'flex w-full md:w-64' : 'hidden '} outline-black-50/20 z-9 outline-1"
		>
			<AdminSidebar />
			<input type="button" class="w-full md:hidden" onclick={() => (sidebar = false)} />
		</div>

		<main class="bg-white-200 z-1 flex w-full flex-col gap-5 overflow-y-auto p-5">
			<div class="mt-10 flex shrink-0 gap-4 overflow-x-auto p-2 md:mt-20">
				<Card label="Total Amount Paid" amount={formatCurrency(totalAmountPaid)} icon="paid" iconColor="!text-success-500" />
				<Card label="Current Bill" amount={formatCurrency(currentBill)} icon="credit_card" iconColor="!text-accent-300" />
				<Card label="Monthly Rate" amount={String(monthlyRate)} icon="trending_up" iconColor="!text-blue-500" />
				<Card label="Total Kilowatts" amount={String(totalKilowatts)} unit="kWh" icon="electric_bolt" iconColor="!text-yellow-400" />
			</div>
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<div>
				</div>
			</div>
		</main>
	</div>
</div>
