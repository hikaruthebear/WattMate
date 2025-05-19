<script lang="ts">
	import { ModalContainer, ActionItem } from '$lib';
	let { isOpen, close } = $props();
</script>

{#snippet info(label: string, info: string)}
	<div class="flex items-center justify-between">
		<span class="text-gray-600">{label}</span>
		<span class="font-medium">{info}</span>
	</div>
{/snippet}

<ModalContainer {isOpen}>
	<div class="w-96 max-w-full rounded-2xl bg-white p-8 shadow-2xl">
		<div class="flex items-center justify-end">
			<ActionItem icon="close" iconSize={24} iconColor="!text-accent-300" onclick={close} />
		</div>
		
		<form id="entryForm" class="space-y-4">
			<div>
				<label for="date" class="block text-sm font-medium text-gray-700 mb-1">Date:</label>
				<input
					type="date"
					id="date"
					name="date"
					required
					class="block w-full rounded border border-gray-300 p-2 focus:outline-none"
				/>
			</div>
			<div>
				<label for="name" class="block text-sm font-medium text-gray-700 mb-1">Name:</label>
				<input
					type="text"
					id="name"
					name="name"
					required
					placeholder="New Sample"
					class="block w-full rounded border border-gray-300 p-2 focus:outline-none"
				/>
			</div>
			<div id="error" class="hidden text-red-500"></div>
			<button type="submit" class="bg-yellow-400 hover:bg-yellow-500 w-full rounded py-3 font-medium text-black"
				>Add Entry</button
			>
		</form>
	</div></ModalContainer
>
