<script lang="ts">
	import SidebarItem from './sidebar-item.svelte';
	import { ActionItem } from '$lib';
</script>

<div
	class="bg-white-50 flex h-full w-full flex-col justify-between gap-3 overflow-hidden px-2 py-10 pt-20 md:pt-27
"
>
	<div class=" flex flex-col gap-3">
		<SidebarItem label="Dashboard" name="nav" route="/user/dashboard" icon="grid_view"/>
		<SidebarItem label="Billing" name="nav" route="/user/bills" icon="table"/>
	</div>

	<div class="flex flex-col gap-3 px-4">
		<hr class="text-white-400" />
		<ActionItem label="Logout" iconSize="32" icon="logout"/>
	</div>
</div>
