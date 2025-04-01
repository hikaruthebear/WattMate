<script>
	import { Logo, RadioItem, ActionItem } from '$lib';
</script>

<aside
	class="bg-white-50 border-black-50/50 fixed flex h-[100dvh] w-64 flex-col justify-between p-5 pb-14 text-black-500 drop-shadow-lg"
>
	<div class="text-black-400 flex items-center gap-2 text-xl font-bold">
		<Logo width="3" />
		<h1>WattMate</h1> 
	</div>

	<div class=" mt-[-15rem] flex flex-col gap-3">
		<RadioItem name="dashboard" label="Dashboard" icon="/icons/dashboard.png" checked />
		<RadioItem name="bill" label="Bill"/>
		<RadioItem name="members" label="Members"/>
		<RadioItem name="records" label="Records"/>
	</div>
	<div class="flex flex-col gap-2">
		<hr class="text-text/20" />
		<ActionItem icon="/icons/logout.png" size="1.5" label="Logout" />
	</div>
</aside>
