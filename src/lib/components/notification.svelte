<script lang="ts">
	import { ModalContainer, ActionItem, Icon } from '$lib';
	let { isOpen, close } = $props();

	let selectedTab = $state('notification');
</script>

{#snippet Tab(value: string, checked: boolean = false, onchange: () => void)}
	<label>
		<input type="radio" name="panel" {value} class="peer hidden" {checked} {onchange} />
		<div
			class="bg-white-400 border-white-200 flex h-fit items-center border-1 border-b-0 p-2 text-lg font-medium peer-checked:bg-white"
		>
			{value}
		</div>
	</label>
{/snippet}

{#snippet notifItem()}
	<div class="bg-accent-200 flex items-center gap-x-2 rounded-lg p-2">
		<Icon icon="info" color="!text-blue-500" />
		<h1>Notification 1</h1>
	</div>
{/snippet}

{#snippet notifications()}
	<div class="flex flex-col gap-2 py-4">
		{@render notifItem()}
		{@render notifItem()}
		{@render notifItem()}
		{@render notifItem()}
	</div>
{/snippet}

<ModalContainer {isOpen}>
	<div class="min-w-96 max-w-full rounded-2xl bg-white p-8 shadow-2xl">
		<div class="flex items-center justify-end">
			<ActionItem icon="close" iconSize="24" iconColor="!text-accent-300" onclick={close} />
		</div>
		<div class="w-[450px]">
			<h1 class="mb-2 text-xl font-bold">Notification</h1>
			<div class="mb-2 flex">
				{@render Tab('Notification', true, () => (selectedTab = 'notification'))}
				{@render Tab('Member request', false, () => (selectedTab = 'member'))}
			</div>
			{#if selectedTab === 'notification'}
				{@render notifications()}
			{:else if selectedTab === 'member'}
				member request
			{:else}
				<!-- else content here -->
			{/if}
		</div>
	</div>
</ModalContainer>
