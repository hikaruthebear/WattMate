<script>
	import { Icon } from '$lib';
  export let icon = '/placeholder.png'
  export let label = 'Logout'
  export let size = '2'
</script>

<div class="flex items-center text-text font-medium rounded-2xl hover:bg-text/10 opacity-50 w-fit px-4 py-2 transition-all duration-300 ease-in-out">
    <Icon src={icon} size={size}/><span>{label}</span>
</div>
