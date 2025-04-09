<script>
	import { ActionItem, ProfileIcon, VSeparator, Icon, Logo } from '$lib';
	export let onclick = () => {};
</script>

<header
	class="bg-white-50 text-black-500 border-black-50/20 flex h-12 w-full items-center justify-between border-1 md:h-20"
>
	<div class="text-black-400 flex items-center gap-2 p-5 text-xl md:text-2xl font-bold">
		<ActionItem {onclick} />
		<Logo className="w-8 md:w-11" />
		<h1>WattMate</h1>
	</div>
	<div class="flex items-center gap-1">
		<Icon size="1.5" />
		<Icon size="1.5" />
		<div class="flex p-5 items-center">
			<VSeparator />
			<ProfileIcon size="1" label="User123" />
		</div>
	</div>
</header>
