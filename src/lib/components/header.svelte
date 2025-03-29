<script>
	import { ActionItem, ProfileIcon, VSeparator, Icon } from '$lib';
	export let heading = 'Dashboard';
</script>

<header
	class="bg-background border-text-light/20 fixed ml-64 flex h-20 w-full items-center justify-between border-1 px-10 pr-67"
>
	<h1 class=" text-3xl font-black">{heading}</h1>
	<div class="flex items-center gap-1">
		<Icon size="1.5" />
		<Icon size="1.5" />
		<VSeparator />
		<ProfileIcon size="1" label="User123" />
	</div>
</header>
