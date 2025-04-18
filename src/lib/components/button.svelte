<script>
	// @ts-nocheck

	let {
		label = 'label',
		placeholder = '',
		size = 'sm',
		type = 'text',
		required = false,
		name = '',
		value = $bindable(),
		error = '',
		inputmode = null,
		onclick = () => {},
		disabled = false,
		variant = 'primary'
	} = $props();
</script>

<!-- Button Element -->
<button
	{disabled}
	{onclick}
	class="w-full rounded-lg font-semibold transition-all duration-300 ease-out focus:ring-2
    {variant === 'primary'
		? 'bg-primary-300 text-black-100 hover:text-white-50 hover:bg-primary-400 focus:ring-primary-200'
		: ''}
    {variant === 'secondary'
		? 'bg-secondary-50 border-secondary-300  text-black-100 hover:bg-secondary-100 focus:ring-secondary-dark border-1'
		: ''}
    {variant === 'danger' ? 'bg-red-500 text-white hover:bg-red-600 focus:ring-red-300' : ''}
    {size === 'sm' ? 'px-3 py-1 text-sm' : ''}
    {size === 'md' ? 'px-5 py-2 text-base' : ''}
    {size === 'lg' ? 'px-7 py-3 text-lg' : ''}
    {disabled ? 'cursor-not-allowed opacity-50' : ''}"
>
	{label}
</button>
