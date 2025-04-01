<script>
  export let label = 'label'
  export let options = ['Apple', 'Banana'];
  export let required = false;
</script>
<div class="w-full flex flex-col p-1">
  <label for={label}>{label}</label>
  <select name={label} id={label} class="w-full h-10 rounded-lg "{required}>
    <option value="none">{label}</option>
    {#each options as option}
       <option value={option}>{option}</option>
    {/each}
  </select>
</div>

