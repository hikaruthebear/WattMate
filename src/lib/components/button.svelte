<script>
	export let label = 'Click me';
	export let variant = 'primary'; // amber | secondary | danger
	export let size = 'md'; // sm | md | lg
	export let disabled = false;
    
</script>

<!-- Button Element -->
<button
	class="w-full  rounded-lg font-semibold transition-all duration-300 ease-out hover:transform focus:ring-2
    {variant === 'primary' ? 'bg-primary text-text hover:bg-primary-dark focus:rig-primary-light' : ''}
    {variant === 'secondary' ? 'bg-secondary text-text hover:bg-secondary-dark focus:ring-secondary-dark' : ''}
    {variant === 'danger' ? 'bg-red-500 text-white hover:bg-red-600 focus:ring-red-300' : ''}
    {size === 'sm' ? 'px-3 py-1 text-sm' : ''}
    {size === 'md' ? 'px-5 py-2 text-base' : ''}
    {size === 'lg' ? 'px-7 py-3 text-lg' : ''}
    {disabled ? 'cursor-not-allowed opacity-50' : ''}"
	{disabled}
>
	{label}
</button>
