<script lang="ts">
	let {
		label = 'label',
		placeholder = '',
		size = 'sm',
		type = 'text',
		required = false,
		name = '',
		value = $bindable(),
		error = '',
		inputmode = null
	} = $props();

	function scrollOnView(event: Event) {
		(event.target as HTMLElement).scrollIntoView({ behavior: 'smooth', block: 'center' });
	}
</script>

<div class="flex flex-col p-1">
	<label for={label} class=" text-black-200 font-semibold">
		{label}
		<input
			{type}
			{name}
			{required}
			{inputmode}
			bind:value
			id={label}
			{placeholder}
			onfocus={scrollOnView}
			autocomplete="off"
			class="border-box bg-white-50 text-black-50 hover:border-primary-300 hover:ring-primary-300 focus:border-primary-300 focus:ring-primary-300 focus:placeholder:text-lgP w-full
			rounded-lg font-normal transition-all ease-in placeholder:font-normal
			placeholder:transition-all hover:cursor-text focus:text-lg focus:text-gray-800
			{size === 'sm' ? 'h-8' : ''}
			{size === 'md' ? 'h-10' : ''}
			{size === 'lg' ? 'h-11' : ''}
			{size === 'xl' ? 'h-12' : ''}
			"
		/>
	</label>
	<p class="text-danger-400 p-1 text-sm">{error}</p>
</div>
