<script>
	import { ActionItem, ProfileIcon, VSeparator, Icon, Logo } from '$lib';
	export let onclick = () => {};
</script>

<header
	class="bg-white-50 text-black-500 border-black-50/20 flex h-12 w-full items-center justify-between border-1 md:h-20"
>
	<div class="text-black-400 flex items-center gap-2 p-5 text-xl font-bold md:text-2xl">
		<ActionItem {onclick} icon="/icons/burger.png" size="1.5" />
		<a href="/" class="flex items-center gap-2">
			<Logo className="w-8 md:w-11" />
			<h1>WattMate</h1>
		</a>
	</div>
	<div class="flex items-center">
		<ActionItem size="1.5" icon="/icons/notification.png" />
		<div class="flex items-center p-5 gap-2">
			<VSeparator />
			<ProfileIcon size="1.5" label="User123" icon="/icons/user.png" />
		</div>
	</div>
</header>
