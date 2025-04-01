<script>
	import { Header, Sidebar, Card, TableRow, TableHead, Heading } from '$lib';
</script>
<!-- 
<div class="flex h-screen bg-white-200">
	<Sidebar />

	<div class="flex w-full flex-col">
		<Header />

		<main class="mt-20 ml-64 flex flex-col gap-4 overflow-y-auto p-5">
			<div class="grid grid-cols-4 gap-5">
				<Card />
				<Card />
				<Card />
				<Card />
			</div>

			<div class="bg-white-50 mt-8 h-auto w-full gap-5 text-black-500 rounded-2xl p-5">
				<Heading heading="Consumer" />
				<TableHead column1="Name"  column2="kWh used" column3="Bill" column4="Status"/>
				{#each Array(13) as _}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div> -->

<!-- Mobile Struct -->
<div class="flex h-screen bg-white-200">
	<div class="flex w-full flex-col"> 
		<Header />
		<main class="bg-white-300 mt-20 ml-64 flex flex-col gap-4 overflow-y-auto p-5 md:bg-white-300">
			<div class="grid grid-cols-4 gap-5 overflow-x-auto"> 
				<Card />
				<Card /> 
				<Card />
				<Card />
			</div>

			<div class="bg-white-50 mt-8 h-auto w-full gap-5 text-black-500 rounded-2xl p-5">
				<Heading heading="Consumer" />
				<TableHead column1="Name"  column2="kWh used" column3="Bill" column4="Status"/>
				{#each Array(13) as _}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>