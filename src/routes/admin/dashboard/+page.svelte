<script lang="ts">
	import axios from 'axios';
	import { AdminSidebar, Card, Heading, AdminHeader, AddPayment } from '$lib';

	let sidebar = true;
	let addPaymentModal = false;
</script>

<AddPayment isOpen={addPaymentModal} close={() => (addPaymentModal = false)} />

<div class="flex h-[100dvh] flex-col overflow-hidden bg-red-500">
	<header class="fixed z-10 h-fit w-full bg-blue-500">
		<AdminHeader burgerEvent={() => (sidebar = true)} />
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
				<Card label="Total Amount Paid" amount="10,000.50" icon="paid" iconColor="!text-success-500" />
				<Card label="Current Bill" amount="29,500.50" icon="credit_card" iconColor="!text-accent-300" />
				<Card label="Monthly Rate" amount="19.50 " icon="trending_up" iconColor="!text-blue-500" />
				<Card label="Total Kilowatts" amount="215 " unit="kWh" icon="electric_bolt" iconColor="!text-yellow-400" />
			</div>
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<div>
				</div>
			</div>
		</main>
	</div>
</div>
