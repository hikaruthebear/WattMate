<script>
	import { Button, Selection, Input } from '$lib';
</script>

<main class="bg-white-100 text-black-500 flex h-[100vh] flex-col items-center justify-center">
	<div
		class="bg-white-50 flex h-full w-full flex-col gap-7 px-5 py-10 md:h-auto md:w-1/3 md:min-w-[375px] md:rounded-xl"
	>
		<div>
			<h1 class="text-2xl font-bold">
				Register to <span class="text-accent-300">WattMate!</span>
			</h1>
			<p class="font-sm text-black-50">Please input your details</p>
		</div>
		<form action="" class=" space-y-4">
			<div class="grid grid-cols-2">
				<Input label="First name" size="md" required />
				<Input label="Last name" size="md" required />
			</div>
			<div class="grid grid-cols-2">
				<Input label="Age" size="md" type="number" required />
				<Selection label="Gender" options={['Male', 'Female']}/>
			</div>
			<Input label="Address" size="md" required />
			<Input label="Phone number" size="md" required />
			<Input label="Meter ID" size="md" type="number" required />

			<Input label="Password" type="password" size="md" required />
			<Input label="Confirm Password" type="password" size="md" required />
			<Button variant="primary" label="Register" size="md" />
			<hr class="text-black/20" />
			<a href="/login">
				<Button variant="secondary" label="Back to login" size="md" />
			</a>
		</form>
	</div>
</main>
