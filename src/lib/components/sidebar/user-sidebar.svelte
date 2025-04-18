<script lang="ts">
	import SidebarItem from './sidebar-item.svelte';
	import { ActionItem } from '$lib';
</script>

<div
	class="bg-white-50 flex h-full w-full flex-col justify-between gap-3 overflow-hidden px-2 py-10 pt-20 md:pt-27
"
>
	<div class=" flex flex-col gap-3">
		<SidebarItem label="Dashboard" name="nav" route="/user/dashboard" icon=/icons/dashboard.png/>
		<SidebarItem label="Billing" name="nav" route="/user/bills" icon=/icons/bill.png/>
	</div>

	<div class="flex flex-col gap-3 px-4">
		<hr class="text-white-400" />
		<ActionItem label="Logout" size="1" icon=/icons/logout.png/>
	</div>
</div>
