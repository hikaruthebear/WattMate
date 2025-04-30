<script>
	import { ModalContainer, ActionItem } from '$lib';
	let { isOpen, close } = $props();
</script>

<ModalContainer {isOpen}>
	<div class="flex items-center justify-end">
		<ActionItem icon="close" iconSize="24" iconColor="!text-accent-300" onclick={close} />
	</div>

	<h2 class="text-2xl font-bold">Add Payment</h2>
	<form id="paymentForm">
		<div class="mb-4">
			<label for="amount" class="block text-sm font-medium text-gray-700">Amount:</label>
			<input
				type="number"
				id="amount"
				name="amount"
				required
				class="mt-1 block w-full rounded-md border border-gray-300 p-2 focus:ring focus:ring-blue-500 focus:outline-none"
			/>
		</div>
		<div class="mb-4"></div>
		<div id="error" class="mb-4 hidden text-red-500"></div>
		<button type="submit" class="bg-primary-300 hover:bg-primary-400 w-full rounded py-2 font-bold text-white"
			>Add Payment</button
		>
	</form>
</ModalContainer>
