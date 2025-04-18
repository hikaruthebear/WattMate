<script>
	import { AdminSidebar, Header, Card , TableHead, TableRow} from '$lib';

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
		<main class="w-full bg-white-200 p-5 flex flex-col gap-5 overflow-y-auto mt-20">
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<TableHead />
				{#each Array(13) as item,i}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>
