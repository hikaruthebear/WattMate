<script>
	import { ActionItem, AdminSidebar, AdminHeader, TableHead, TableRow, Heading, UserTable, AddMember } from '$lib';
	import axios from 'axios';


	let sidebar = $state(false);
	let addMember = $state(false);
</script>

<AddMember
	isOpen={addMember}
	close={() => {
		addMember = false;
	}}
/>

<div class="flex h-[100dvh] flex-col overflow-hidden bg-red-500">
	<header class="fixed z-10 h-fit w-full bg-blue-500">
		<AdminHeader burgerEvent={() => (sidebar = !sidebar)} />
	</header>
	<div class="flex h-full">
		<div class=" fixed h-full w-64 shrink-0 bg-green-500 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<AdminSidebar />
		</div>
		<main class="bg-white-200 mt-10 flex w-full flex-col gap-5 overflow-y-auto p-5 md:mt-20">
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<div class="flex items-center justify-between">
					<Heading heading="Members" />
					<ActionItem icon="person_add" onclick = {() => {addMember = true;}} iconSize= {32} />
				</div>
				<div>
					<UserTable />
				</div>
			</div>
		</main>
	</div>
</div>

