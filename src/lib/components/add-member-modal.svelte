<script>
	import { ModalContainer, ActionItem } from '$lib';
	let { isOpen, close } = $props();
</script>

<ModalContainer {isOpen}>
	<div class="w-96 max-w-full rounded-2xl bg-white p-8 shadow-2xl">
		<div class="flex items-center justify-end">
			<ActionItem icon="close" iconSize={24} iconColor="!text-accent-300" onclick={close} />
		</div>
		<div class="bg-opacity-50 fixed inset-0 z-50 flex items-center justify-center bg-black">
			<div class="w-full max-w-md rounded-xl bg-white p-4 shadow-xl">
				<h2 class="mb-3 text-xl font-semibold">Add Member</h2>
				<form class="grid grid-cols-2 gap-3 text-sm">
					<div class="col-span-1">
						<label for="userid" class="mb-1 block">UserID</label>
						<input type="text" id="userid" name="userid" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="addressid" class="mb-1 block">AddressID</label>
						<input type="text" id="addressid" name="addressid" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="meterid" class="mb-1 block">MeterID</label>
						<input type="text" id="meterid" name="meterid" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="firstname" class="mb-1 block">Firstname</label>
						<input type="text" id="firstname" name="firstname" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="lastname" class="mb-1 block">Lastname</label>
						<input type="text" id="lastname" name="lastname" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="phone" class="mb-1 block">Phone</label>
						<input type="text" id="phone" name="phone" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="email" class="mb-1 block">Email</label>
						<input type="email" id="email" name="email" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="age" class="mb-1 block">Age</label>
						<input type="number" id="age" name="age" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="gender" class="mb-1 block">Gender</label>
						<select id="gender" name="gender" class="w-full rounded border border-gray-300 p-1.5">
							<option value="">Select</option>
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="other">Other</option>
						</select>
					</div>
					<div class="col-span-1">
						<label for="username" class="mb-1 block">Username</label>
						<input type="text" id="username" name="username" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-1">
						<label for="password" class="mb-1 block">Password</label>
						<input type="password" id="password" name="password" class="w-full rounded border border-gray-300 p-1.5" />
					</div>
					<div class="col-span-2 flex justify-end gap-2 pt-2">
						<button type="submit" class="rounded bg-blue-600 px-3 py-1.5 text-white hover:bg-blue-700">Add</button>
						<button type="button" class="rounded bg-gray-300 px-3 py-1.5 text-gray-800 hover:bg-gray-400">Cancel</button
						>
					</div>
				</form>
			</div>
		</div>
	</div>
</ModalContainer>
