<script>
	import { ActionItem, ProfileIcon, VSeparator, Logo, ProfilePanel, Notification } from '$lib';

	let { burgerEvent } = $props();

	let notifPanel = $state(false);
	let profilePanel = $state(false);

</script>

<Notification
	isOpen={notifPanel}
	close={() => {
		notifPanel = false;
	}}
/>
<ProfilePanel
	isOpen={profilePanel}
	close={() => {
		profilePanel = false;
	}}
/>

<header
	class="bg-white-50 text-black-500 border-black-50/20 border-1 flex h-12 w-full items-center justify-between md:h-20"
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
			<ActionItem
				icon="notifications"
				onclick={() => {
					notifPanel = true;
				}}
			/>
		</div>
		<div class="flex items-center gap-2 p-5">
			<VSeparator />
			<ProfileIcon
				label="User123"
				icon="account_circle"
				iconColor="!text-black-100"
				onclick={() => {
					profilePanel = true;
				}}
			/>
		</div>
	</div>
</header>
