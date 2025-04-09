<script lang="ts">
	import SidebarItem from './sidebar-item.svelte';
	import { ActionItem } from '$lib';
</script>

<div
	class="bg-white-50 flex h-full w-full flex-col justify-between gap-3 overflow-hidden px-2 py-10 pt-20 md:pt-27
"
>
	<div>
		<SidebarItem label="Dashboard" name="nav" route="/user/dashboard" checked />
		<SidebarItem label="Billing" name="nav" route="/"/>
		<SidebarItem label="Records" name="nav" />
		<SidebarItem label="Help" name="nav" />
	</div>

	<div class="flex flex-col gap-3 px-4">
		<hr class="text-white-400" />
		<ActionItem label="Logout"/>
	</div>
</div>
