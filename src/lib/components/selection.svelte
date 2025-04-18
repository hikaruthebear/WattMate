<script>
  let  {label = 'label', options = ['Apple', 'Banana'], value =  $bindable(), error = '',required = false} = $props();

</script>
<div class="w-full flex flex-col p-1">
  <label class="font-semibold" for={label}>{label}</label>
  <select name={label} id={label} bind:value={value} class="w-full h-10 rounded-lg "{required}>
    {#each options as option}
       <option value={option}>{option}</option>
    {/each}
  </select>
	<p class="text-danger-400 p-1 text-sm">{error}</p>
  
</div>

