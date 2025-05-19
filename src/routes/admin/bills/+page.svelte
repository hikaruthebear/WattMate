<script>
	import { AdminSidebar, AdminHeader, Heading, ActionItem, BillTableList, AddMember, AddTable } from '$lib';
	import AddMemberModal from '$lib/components/add-member-modal.svelte';
	import InputTable from '$lib/components/input-table.svelte';

	let sidebar = $state(false);
	let addTable = $state(false);

	let toggleSidebar = () => {
		sidebar = !sidebar;
	};
</script>

<div class="flex h-[100dvh] flex-col overflow-hidden">
	<header class="fixed z-10 h-fit w-full bg-blue-500"><AdminHeader burgerEvent={() => (sidebar = !sidebar)} /></header>
	<div class="flex h-full">
		<div class=" fixed h-full w-64 shrink-0 bg-green-500 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<AdminSidebar />
		</div>
		<main class="bg-white-200 mt-10 flex w-full flex-col gap-5 overflow-y-auto p-5 md:mt-20">
			<div class="bg-white-50 flex flex-col rounded-lg p-8">
				<BillTableList />
			</div>
		</main>
	</div>
</div>
