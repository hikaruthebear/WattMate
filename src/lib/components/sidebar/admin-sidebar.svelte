<script lang="ts">
	import SidebarItem from './sidebar-item.svelte';
	import { ActionItem } from '$lib';
</script>

<div
	class="bg-white-50 flex h-full w-full flex-col justify-between gap-3
	overflow-hidden px-2 py-10 pt-20 md:pt-27 outline-1 outline-black-50/20"
>
	<div>
		<SidebarItem label="Dashboard" name="nav" route="/admin/dashboard" icon="grid_view" />
		<SidebarItem label="Bills" name="nav" route="/admin/bills" icon="table" />
		<SidebarItem label="Members" name="nav" route="/admin/members" icon="groups" />
	</div>

	<div class="flex flex-col gap-3 px-4">
		<hr class="text-white-400" />
		<ActionItem label="Logout" icon="logout" iconSize="32" />
	</div>
</div>
