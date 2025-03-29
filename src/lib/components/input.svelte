<script lang="ts">
	export let label = 'label here';
	export let placeholder = '';
	export let size = 'sm';
	export let type = 'text';
	export let required = false;
	export let name = '';

	function scrollOnView(event: Event) {
		(event.target as HTMLElement).scrollIntoView({ behavior: 'smooth', block: 'center' });
	}
</script>

<div class="flex flex-col p-1">
	<label for={label} class=" text-gray-700">
		{label}
		<input
			{type}
			{name}
			{placeholder}
			{required}
			onfocus={scrollOnView}
			autocomplete='off'
			id={label}
			class="border-box w-full rounded-lg bg-white/80 text-gray-500 transition-all ease-in placeholder:font-normal placeholder:transition-all
			hover:cursor-text hover:border-amber-500 hover:ring-amber-500 focus:border-amber-500 focus:text-lg
			focus:text-gray-800 focus:ring-amber-500 focus:placeholder:text-lg
			{size === 'sm' ? 'h-8' : ''}
			{size === 'md' ? 'h-10' : ''}
			{size === 'lg' ? 'h-11' : ''}
			{size === 'xl' ? 'h-12' : ''}
			"
		/>
	</label>
</div>
