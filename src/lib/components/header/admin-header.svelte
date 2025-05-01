<script>
	import { ActionItem, ProfileIcon, VSeparator, Logo } from '$lib';

	let { burgerEvent , notifEvent, profileEvent} = $props();
</script>

<header
	class="bg-white-50 text-black-500 border-black-50/20 flex h-12 w-full items-center justify-between border-1 md:h-20"
>
	<div class="text-black-400 flex items-center gap-2 p-5 text-xl font-bold md:text-2xl">
		<ActionItem onclick={burgerEvent} icon="menu" iconSize="32" />
		<a href="/" class="flex items-center gap-2">
			<Logo className="w-8 md:w-11" />
			<h1>WattMate</h1>
		</a>
	</div>
	<div class="flex items-center">
		<div class="flex items-center gap-4">
			<ActionItem icon="notifications" onclick={notifEvent}/>
		</div>
		<div class="flex items-center gap-2 p-5">
			<VSeparator />
			<ProfileIcon label="User123" icon="account_circle" iconColor="!text-black-100" onclick={profileEvent} />
		</div>
	</div>
</header>
