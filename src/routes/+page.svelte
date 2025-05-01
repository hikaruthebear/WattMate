<script lang="ts">
	import { goto } from '$app/navigation';
</script>

{#snippet route(label: string, route: string)}
	<div class="border-2 border-white-600 p-2 rounded w-20 text-center">
		<button onclick={() => goto(route)}>{label}</button>
	</div>
{/snippet}

<div class="flex h-screen items-center justify-center gap-2">
	{@render route('Admin', './admin/dashboard')}
	{@render route('User', './user/dashboard')}
	{@render route('Login', 'login')}
</div>
