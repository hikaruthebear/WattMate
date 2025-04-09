<script>
	import { Sidebar, Header, Card , TableHead, TableRow} from '$lib';
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
			<Sidebar />
		</div>
		<main class="w-full bg-yellow-300">
			<div class="flex gap-4 p-5 overflow-y-auto mt-10 md:mt-20">
				<Card />
				<Card />
				<Card />
				<Card />
			</div>
			<div class="bg-white-50 flex flex-col gap-1 p-5 m-1 rounded-lg">
				<TableHead />
				{#each Array(13) as item,i}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>
