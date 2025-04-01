<script>
	import { Input, Button } from '$lib';
</script>

<main class="text-black-500 bg-white-100 flex h-[100dvh] flex-col items-center justify-center">
	<div
		class="bg-white-50 flex h-full w-full flex-col gap-7 px-5 py-10 md:h-auto md:w-1/4 md:min-w-[375px] md:rounded-xl drop-shadow-md"
	>//
		<div>
			<h1 class="text-2xl font-bold">
				Please login to <span class="text-accent-300">WattMate!</span>
			</h1>
			<p class="font-sm text-black-50">Please input your details</p>
		</div>
		<form action="" class="space-y-5">
			<Input label="Username" type="text" size="md" required />
			<Input label="Password" type="password" size="md" required />
			<div>
				<a href="/" class="text-black-500 inline font-semibold hover:underline">Forgot password</a>
			</div>
			<Button variant="primary" label="Login" size="md" />
			<hr class="text-black-50/20" />
			<a href="/register">
				<Button variant="secondary" label="Register" size="md" />
			</a>
		</form>
	</div>
</main>
