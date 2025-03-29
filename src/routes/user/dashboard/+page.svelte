<!-- <script>
	import { Header, Sidebar, Card , TableRow, TableHead, Heading} from '$lib';
</script>

<div class="flex h-screen">
	<Sidebar  />

	<div class="flex flex-col w-full">
		<Header/>

		<div class="h-full flex flex-col">
			<main class=" mt-24 ml-64 p-5 overflow-y-auto flex gap-4 flex-col">
				<div class="grid grid-cols-4 gap-5">
					<Card />
					<Card />
					<Card />
					<Card />
				</div>
				<div class="w-full mt-8 bg-background h-auto rounded-2xl gap-5 p-5">
					<Heading heading='Consumer'/>
					<TableHead />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
					<TableRow />
				</div>
			</main>
		</div>
	</div>
</div> -->

<script>
	import { Header, Sidebar, Card, TableRow, TableHead, Heading } from '$lib';
</script>

<div class="flex h-screen">
	<!-- Sidebar -->
	<Sidebar />

	<!-- Main Content -->
	<div class="flex w-full flex-col">
		<Header />

		<!-- Content Area -->
		<main class="mt-24 ml-64 flex flex-col gap-4 overflow-y-auto p-5">
			<!-- Cards Grid -->
			<div class="grid grid-cols-4 gap-5">
				<Card />
				<Card />
				<Card />
				<Card />
			</div>

			<!-- Table Section -->
			<div class="bg-background mt-8 h-auto w-full gap-5 rounded-2xl p-5">
				<Heading heading="Consumer" />
				<TableHead />
				{#each Array(13) as _}
					<TableRow />
				{/each}
			</div>
		</main>
	</div>
</div>
