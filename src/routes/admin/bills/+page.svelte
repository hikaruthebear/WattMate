<script>
	import { AdminSidebar, Header, Heading, TableHead, TableRow } from '$lib';
	import ActionItem from '$lib/components/action-item.svelte';

	let sidebar = false;

	let toggleSidebar = () => {
		sidebar = !sidebar;
	};
</script>

<div class="flex h-[100dvh] flex-col overflow-hidden">
	<header class="fixed z-10 h-fit w-full bg-blue-500">
		<Header onclick={toggleSidebar} />
	</header>
	<div class="flex h-full">
		<div class=" fixed h-full w-64 shrink-0 bg-green-500 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<AdminSidebar />
		</div>
		<main class="bg-white-200 mt-10 flex w-full flex-col gap-5 overflow-y-auto p-5 md:mt-20">
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<div class="flex justify-between items-center">
					<Heading heading="Tables" />
					<ActionItem icon=/icons/addTable.png/>
				</div >
				<TableHead column1="Date" column2="Total kWh used" column3="Total Amount" column4="Status" />
				{#each Array(13) as item, i}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>
