<script lang="ts">
	let { isOpen = false } = $props();
</script>

<div id="modal"
class=" bg-black-500/50 fixed z-100 flex h-[100dvh] w-full items-center justify-center px-10 py-20
	{isOpen ? '' : 'hidden'}"
	
>
	<!-- svelte-ignore slot_element_deprecated -->
	<!-- <div class="bg-white-50 outline-black-50/10 container h-fit w-fit rounded-lg p-5 outline-1 drop-shadow-2xl"> -->
		<slot></slot>
	<!-- </div> -->
</div>
