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

<ModalContainer {isOpen} > 
  <div class="w-96 max-w-full rounded-2xl bg-white p-8 shadow-2xl">
      <div class="flex items-center justify-end ">
        <ActionItem icon="close" iconSize={24} iconColor="!text-accent-300" onclick={close} />
      </div>
			<div class="mb-6 flex items-center space-x-4">
				<div class="h-10 w-10 rounded-full border-1 bg-yellow-500"></div>
				<div>
					<h2 class="text-xl font-bold">John Doe</h2>
					<p class="text-gray-500">Software Developer</p>
				</div>
			</div>
			<hr class="text-white-500 w-full my-7">
			<div class="space-y-2">
        {@render info('Email', 'john@example.com')}
        {@render info('Phone:', '+1 234 567 890')}
        {@render info('Meter ID:', 'M123456789')}
        {@render info('Location:', 'New York, USA')}
		</div>
</ModalContainer>
