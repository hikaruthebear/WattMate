<script>
	import { UserSidebar, UserHeader, Heading, TableHead, TableRow } from '$lib';

	let sidebar = false;

	let toggleSidebar = () => {
		sidebar = !sidebar;
	};
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
				<TableHead column1="Date" column2="Total kWh used" column3="Total Amount" column4="Status" />
				{#each Array(13) as item, i}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>
