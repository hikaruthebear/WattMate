<script lang="ts">
	import { goto } from '$app/navigation';
	import { Input, Button } from '$lib';
	import axios from 'axios';

	const apiUrl: string = 'http://localhost:8080';

	let phoneNumber = $state('');
	let password = $state('');

	const handleLogin = async () => {
		try {
			const response = await axios.post(apiUrl, { action: 'login', email: phoneNumber, password: password });

			console.log('Login response:', response.data);

			if (response.data && response.data.success) {
				if(response.data.is_admin){
					goto('/admin/dashboard');
				}
				// Handle successful login, e.g., redirect to dashboard
				goto('/user/dashboard');
			} else if (response.data && response.data.error) {
				// Handle specific error messages
				alert(response.data.error);
			} else {
				// Handle login failure
				alert('Login failed. Please check your credentials.');
			}
		} catch (error) {
			console.error('Login failed:', error);
		}
	};
</script>

<main class="text-black-500 bg-white-100 flex h-[100dvh] flex-col items-center justify-center">
	<div class="bg-white-50 flex h-full w-full flex-col gap-7 px-5 py-10 drop-shadow-md md:h-auto md:w-1/4 md:min-w-[375px] md:rounded-xl">
		<div>
			<h1 class="text-2xl font-bold">
				Please login to <span class="text-accent-300">WattMate!</span>
			</h1>
			<p class="font-sm text-black-50">Please input your details</p>
		</div>
		<form action="" class="space-y-5">
			<Input label="Phone number" type="text" size="md" name="phone" bind:value={phoneNumber} required />
			<Input label="Password" type="password" size="md" name="password" bind:value={password} required />
			<div>
				<a href="/" class="text-black-500 inline p-1 font-semibold hover:underline">Forgot password</a>
			</div>
			<Button variant="primary" label="Login" size="md" onclick={handleLogin} />
			<hr class="text-black-50/20" />
			<a href="/register">
				<Button variant="secondary" label="Register" size="md" />
			</a>
		</form>
	</div>
</main>
