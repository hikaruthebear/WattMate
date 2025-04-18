<script>
	import { UserSidebar, Header, Card , TableHead, TableRow, Heading} from '$lib';
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
			<UserSidebar />
		</div>
		<main class="w-full bg-white-200 p-5 flex flex-col gap-5 overflow-y-auto">
			<div class="flex gap-4 overflow-x-auto mt-10 md:mt-20 shrink-0 p-2">
				<Card label="Current Bill" amount="10,000.50 " icon=/icons/currentBill.png/> 
				<Card label="kW/h Used" amount="40 " unit="kWh" icon=/icons/kwh.png/>
				<Card label="Rate" amount="19.50 " icon=/icons/rate.png/>
				<Card label="Due Date" date="Feb 20, 2025" unit="date" icon=/icons/dueDate.png/>
			</div>
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<Heading heading="Graphotanginamoka" />
				
			</div>
		</main>
	</div>
</div>
