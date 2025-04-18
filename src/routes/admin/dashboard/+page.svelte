<script>
	import { AdminSidebar, Header, Card , TableHead, TableRow, Heading} from '$lib';

	let sidebar = false;

	let toggleSidebar = () => {
		sidebar = !sidebar;
	};
</script>

<div class="flex h-[100dvh] flex-col overflow-hidden bg-red-500">
	<header class="h-fit bg-blue-500 fixed w-full z-10">
		<Header onclick={toggleSidebar} />
	</header>
	<div class="flex h-full ">
		<div class=" h-full w-64 bg-green-500 fixed shrink-0 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<AdminSidebar />
		</div>
		<main class="w-full bg-white-200 p-5 flex flex-col gap-5 overflow-y-auto">
			<div class="flex gap-4 overflow-x-auto mt-10 md:mt-20 shrink-0 p-2">
				<Card label="Total Amount Paid" amount="10,000.50" icon="/icons/paid.png"/> 
				<Card label="Current Bill" amount="29,500.50" icon="/icons/currentBill.png"/>
				<Card label="Monthly Rate" amount="19.50 " icon="/icons/rate.png"/>
				<Card label ="Total Kilowatts" amount="215 " unit="kWh" icon="/icons/kwh.png"/>
			</div>
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<Heading heading="Consumers" />
				<TableHead column1="Name" column2="kWh used" column3="Amount" column4="Status"/>
				{#each Array(13) as item,i}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>
