<script>
	import { ActionItem, ProfileIcon, VSeparator, Icon } from '$lib';
	export let heading = 'Dashboard';
</script>

<header
	class="bg-white-50 text-black-500 border-black-50/20 fixed h-12 flex w-full items-center justify-between border-1 px-10"
>
	<h1 class=" text-3xl font-black">{heading}</h1>
	<div class="flex items-center gap-1">
		<Icon size="1.5" />
		<Icon size="1.5" />
		<VSeparator />
		<ProfileIcon size="1" label="User123" style="hidden md:inline"/>
	</div>
</header>
