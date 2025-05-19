<script lang="ts">
	import axios from 'axios';
	import { onMount } from 'svelte';

	const apiUrl = 'http://localhost:8080';

	interface User {
		UserID: number;
		AddressName: string;
		MeterID: number;
		Name: string;
		Phone: string;
		Email: string;
		Age: number;
		Gender: string;
		Password: string;
		Username: string;
	}

	let users: User[] = [];
	onMount(async () => {
		try {
			const response = await axios.get(apiUrl + '/?action=fetch_users');
			if (response.data && !response.data.error) {
				users = response.data.users;
			} else {
				console.error('Error in response:', response.data);
			}
		} catch (error) {
			console.error('Error fetching users:', error);
		}
	});
</script>

{#snippet tableRow(user: User)}
	<tr class="hover:bg-gray-50 text-nowrap">
		<td class="px-20 py-3 font-medium text-gray-900">{user.Name}</td>
		<td class="px-20 py-3">
			<div class="text-gray-500">{user.Phone}</div>
			<div class="text-gray-400">{user.Email}</div>
		</td>
		<td class="px-20 py-3 text-gray-700">{user.AddressName}</td>
		<td class="px-20 py-3 text-gray-700">{user.MeterID}</td>
	</tr>
{/snippet}
<div class="w-full overflow-x-auto outline-1 outline-gray-300 rounded-lg">
	<table class="min-w-full divide-y divide-gray-200 text-sm ">
		<thead class="bg-gray-50 text-left uppercase tracking-wider text-gray-500">
			<tr>
				<th class="px-20 py-4">Name</th>
				<th class="px-20 py-4">Contact Info</th>
				<th class="px-20 py-4">Address</th>
				<th class="px-20 py-4">Meter No</th>
			</tr>
		</thead>
		<tbody class="divide-y divide-gray-100">
			{#each users as user}
				{@render tableRow(user)}
			{/each}
		</tbody>
	</table>
	
</div>