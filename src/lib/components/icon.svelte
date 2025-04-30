<script lang="ts">
	interface Props {
		icon: string;
		sizepx: number;
		isActive: boolean;
	}

	let { icon = 'photo', sizepx = 32, isActive = false, color = 'text-black-100' } = $props();


</script>

<span class="{isActive ? 'filled' : ''} material-symbols-rounded  hover:cursor-pointer {color}" style="font-size:{sizepx}px">
	{icon}
</span>

<style>
	.filled {
		font-variation-settings:
			'FILL' 1,
			'wght' 400,
			'GRAD' 0,
			'opsz' 48;
	}
</style>
