<script lang="ts">
	import { UserSidebar, UserHeader, Card, Heading } from '$lib';
	import ConsumptionChart from '$lib/components/consumption-chart.svelte';
	import axios from 'axios';
	import { onMount } from 'svelte';

	let sidebar = false;
	const apiUrl = 'http://localhost:8080';
	let userId: number = 4; // TODO: Replace with actual user ID logic :)

	// Bill data for cards
	let currentBill: number | null = null;
	let currentKwh: number | null = null;
	let currentRate: number | null = null;
	let dueDate: string | null = null;

	type BillSummary = {
		Date: string;
		TotalAmount: number;
		TotalKwhUsed: number;
		AverageRate: number;
		DueDate?: string;
	};

	let billHistory: BillSummary[] = [];

	onMount(async () => {
		try {
			// Fetch all bills for the user (simulate by filtering after fetch for now)
			const response = await axios.get(apiUrl + '/?action=fetch_bill_summary');
			if (response.data && !response.data.error) {
				// Simulate user-specific filtering (replace with user-specific API if available)
				billHistory = response.data.billSummary;
				if (billHistory.length > 0) {
					const latest = billHistory[billHistory.length - 1];
					currentBill = latest.TotalAmount;
					currentKwh = latest.TotalKwhUsed;
					currentRate = latest.AverageRate;
					dueDate = latest.DueDate || latest.Date; // Prefer DueDate if available
				}
			}
		} catch (error) {
			console.error('Error fetching bill data:', error);
		}
	});

	function formatCurrency(amount: number | null): string {
		if (amount == null) return '--';
		return Number(amount).toLocaleString('en-PH', { style: 'currency', currency: 'PHP' });
	}

	function formatKwh(kwh: number | null): string {
		if (kwh == null) return '--';
		return Number(kwh).toLocaleString() + ' kWh';
	}

	function formatRate(rate: number | null): string {
		if (rate == null) return '--';
		return Number(rate).toFixed(2);
	}

	function formatDate(date: string | null): string {
		if (!date) return '--';
		return new Date(date).toLocaleDateString('en-PH', { year: 'numeric', month: 'short', day: 'numeric' });
	}

	let toggleSidebar = () => {
		sidebar = !sidebar;
	};
</script>

<div class="flex h-[100dvh] flex-col overflow-hidden bg-red-500">
	<header class="h-fit bg-blue-500 fixed w-full z-10">
		<UserHeader onclick={toggleSidebar} />
	</header>
	<div class="flex h-full ">
		<div class=" h-full w-64 bg-green-500 fixed shrink-0 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<UserSidebar />
		</div>
		<main class="w-full bg-white-200 p-5 flex flex-col gap-5 overflow-y-auto">
			<div class="flex gap-4 overflow-x-auto mt-10 md:mt-20 shrink-0 p-2">
				<Card label="Current Bill" amount={String(currentBill ?? '--')} icon="credit_card" iconColor="!text-accent-300"/> 
				<Card label="kW/h Used" amount={String(currentKwh ?? '--')} unit="kWh" icon="electric_bolt" iconColor="!text-yellow-400"/>
				<Card label="Rate" amount={String(currentRate ?? '--')} icon="trending_up" iconColor="!text-blue-500"/>
				<Card label="Due Date" date={formatDate(dueDate)} unit="date" icon="calendar_clock" iconColor="!text-danger-600"/>
			</div>
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<Heading heading="Consumption History" />
				<ConsumptionChart />
			</div>
		</main>
	</div>
</div>
