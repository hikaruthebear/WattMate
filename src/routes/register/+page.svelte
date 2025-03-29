<script>
	import Input from '$lib/components/input.svelte';
	import Button from '$lib/components/button.svelte';
</script>

<main
	class="flex h-[100dvh] flex-col items-center justify-center bg-background text-text"
>
	<div
		class="flex h-full w-full flex-col gap-7 bg-secondary/20 px-5 py-10 md:h-auto md:w-1/3 md:min-w-[375px] md:rounded-xl"
	>
		<div class="">
			<h1 class="text-2xl font-bold">
				Register to <span class="text-orange-500">WattMate!</span>
			</h1>
			<p class="font-sm text-gray-600">Please input your details</p>
		</div>
		<form action="" class=" space-y-4">
			<div class="grid grid-cols-2">
				<Input label="First name" size="md" required />	
				<Input label="Last name" size="md" required />
			</div>
			<div class="grid grid-cols-2">
				<Input label="Age" size="md" type="number" required />
				<Input label="Gender" size="md"  required />
			</div>
			<Input label="Address" size="md" required />
			<Input label="Phone number" size="md" required />
			<Input label="Meter ID" size="md" type="number" required />
			
			<Input label="Password" type="password" size="md"  required />
			<Input label="Confirm Password" type="password" size="md"  required />
			<Button variant="primary" label="Register" size="md" />
			<hr class="text-black/20" />
			<a href="/login">
				<Button variant="secondary" label="Back to login" size="md" />
			</a>
		</form>
	</div>
</main> 
