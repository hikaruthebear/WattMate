<script lang="ts">
	import { goto } from '$app/navigation';
	import { Button, Selection, Input } from '$lib';
	import ActionItem from '$lib/components/action-item.svelte';
	import axios from 'axios';

	const Pattern = {
		names: /^[a-zA-Z\s'-]+$/,
		phoneNumber: /^(09\d{9}|(?:\+?63)\d{10})$/,
		email: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/
	};

	let confirmPassword = $state('');
	let User = $state({
		firstName: '',
		lastName: '',
		age: '',
		gender: '',
		phone: '',
		address: '',
		meterId: '',
		password: '',
		email: ''
	});

	const validateNames = (str: string, pattern: RegExp) => {
		if (str.trim() == '') {
			return 'Field cannot be empty.';
		} else if (!pattern.test(str) && str !== '') {
			return 'Only letters, spaces, & hyphens allowed.';
		}
		return '';
	};

	const validateDigit = (num: number, min: number, max: number) => {
		if (num < min || num > max) {
			return 'Value must be  ' + min + ' - ' + max;
		}
		return '';
	};

	const validatePhone = (str: string, pattern: RegExp) => {
		if (str.trim() == '') {
			return 'Field cannot be empty.';
		} else if (!pattern.test(str)) {
			return 'Invalid phone number';
		}
		return '';
	};

	const validateEmail = (str: string, pattern: RegExp) => {
		if (str.trim() == '') {
			return 'Field cannot be empty.';
		} else if (!pattern.test(str)) {
			return 'Invalid Email Address';
		}
		return '';
	};

	const validatePassword = (str: string) => {
		if (str.trim() == '') {
			return 'Field cannot be empty.';
		} else if (str.length < 8) {
			return 'Password must be at least 8 characters.';
		}
		return '';
	};

	const validateGender = (str: string) => {
		if (str === '') {
			return 'Please select a gender.';
		}
		return '';
	};

	const submit = async () => {
		// Check if any validation errors exist
		if (Error.firstName || Error.lastName || Error.age || Error.phone || Error.password || Error.confirmPassword || Error.email) {
			console.error('Form has validation errors. Please fix them before submitting.');
			return; // Don't submit if errors exist
		}

		try {
			const response = await axios.post('http://localhost:8080', {
				action: 'register',
				User
			});

			console.log('Registration :', response.data);
			goto('/login');
		} catch (error) {
			console.error('Error during registration:', error);
		}
	};

	let Error = $state({
		firstName: '',
		lastName: '',
		age: '',
		gender: '',
		address: '',
		phone: '',
		//meterId: '',
		password: '',
		confirmPassword: '',
		email: ''
	});

	$effect(() => {
		Error.firstName = validateNames(User.firstName, Pattern.names);
		Error.lastName = validateNames(User.lastName, Pattern.names);
		Error.age = validateDigit(Number(User.age), 18, 100);
		Error.phone = validatePhone(String(User.phone), Pattern.phoneNumber);
		Error.password = validatePassword(User.password);
		Error.gender = validateGender(User.gender);
		Error.confirmPassword = User.password !== confirmPassword ? 'Passwords do not match.' : '';
		Error.email = validateEmail(User.email, Pattern.email);
		// localStorage.setItem('User', JSON.stringify(User));
	});
</script>

<main class="bg-white-100 text-black-500 flex h-auto flex-col items-center justify-center md:py-10">
	<div class="bg-white-50 flex h-full w-full flex-col gap-7 px-5 py-10 md:h-auto md:w-1/3 md:min-w-[575px] md:rounded-xl">
		<div>
			<h1 class="text-2xl font-bold">
				Register to <span class="text-accent-300">WattMate!</span>
			</h1>
			<p class="font-sm text-black-50">Please input your details</p>
		</div>
		<form action="" class=" space-y-4">
			<div class="grid grid-cols-2">
				<Input label="First name" size="md" bind:value={User.firstName} error={Error.firstName} />
				<Input label="Last name" size="md" bind:value={User.lastName} error={Error.lastName} />
			</div>
			<div class="grid grid-cols-1">
				<Input label="Age" size="md" type="number" bind:value={User.age} error={Error.age} />
				<!-- <Selection label="Gender" options={['Male', 'Female']} bind:value={User.gender} error={Error.gender} /> -->
			</div>
			<!-- <Input label="Address" size="md" type="text" bind:value={User.address} /> -->
			<Input label="Email Address" size="md" type="email" bind:value={User.email} error={Error.email} />
			<Input label="Phone number" size="md" type="text" inputmode="numeric" bind:value={User.phone} error={Error.phone} />
			<!-- <Input label="Meter ID" size="md" type="number" bind:value={User.meterId} error={Error.meterId} /> -->

			<Input label="Password" type="password" size="md" bind:value={User.password} error={Error.password} />
			<Input label="Confirm Password" type="password" size="md" bind:value={confirmPassword} error={Error.confirmPassword} />
			<Button variant="primary" label="Register" size="md" onclick={submit} />
			<hr class="text-black/20" />
			<a href="/login">
				<Button variant="secondary" label="Back to login" size="md" />
			</a>
		</form>
	</div>
</main>
