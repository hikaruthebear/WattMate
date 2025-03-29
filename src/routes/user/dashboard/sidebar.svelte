<script>
	import { Logo, RadioItem, ActionItem } from '$lib';
</script>

<aside
	class="bg-background border-text-light/10 pb-14 fixed top-0 left-0 flex h-[100dvh] w-64 flex-col justify-between p-5 text-gray-700 drop-shadow-lg"
>
	<div class="text-text flex items-center gap-2 text-xl font-bold">
		<Logo width="3" />
		<h1>WattMate</h1>
	</div>

	<div class=" flex flex-col gap-3 text-lg mt-[-15rem]">
		<RadioItem name="hello" label="Dashboard" icon="/icons/dashboard.png" />
		<RadioItem name="hello" label="Bill" />
		<RadioItem name="hello" label="option3" />
		<RadioItem name="hello" label="option4" />
	</div>
	<div class="flex flex-col gap-2">
		<hr class="text-text/20">
		<ActionItem icon="/icons/logout.png" size="1.5" />
	</div>
</aside>
