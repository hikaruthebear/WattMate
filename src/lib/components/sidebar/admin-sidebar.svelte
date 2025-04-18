<script lang="ts">
	import SidebarItem from './sidebar-item.svelte';
	import { ActionItem } from '$lib';
</script>

<div
	class="bg-white-50 flex h-full w-full flex-col justify-between gap-3 overflow-hidden px-2 py-10 pt-20 md:pt-27
"
>
	<div >
		<SidebarItem label="Dashboard" name="nav" route="/admin/dashboard" icon=/icons/dashboard.png/>
		<SidebarItem label="Bills" name="nav" route="/admin/bills" icon=/icons/bill.png/>
		<SidebarItem label="Members" name="nav" route="/admin/members" icon=/icons/members.png/>

		
	</div>

	<div class="flex flex-col gap-3 px-4">
		<hr class="text-white-400" />
		<ActionItem label="Logout" icon=/icons/logout.png size='1.5'/>
	</div>
</div>
