// For JS
<script>
import {ModalContainer} from '$lib'


let {isOpen, close} = $props();
</script>

// HTML CONTENT
<ModalContainer {isOpen}>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Always Visible Modal</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

  <!-- Modal Wrapper (Always Visible) -->
  <div class="bg-white p-6 rounded-2xl shadow-lg w-full max-w-md border border-gray-300">
    <h2 class="text-xl font-semibold mb-4">Add New Entry</h2>

    <form action="#" method="post" class="space-y-4">
      <!-- Date Field -->
      <div>
        <label for="date" class="block text-sm font-medium text-gray-700">Date</label>
        <input type="date" id="date" name="date" class="mt-1 block w-full border border-gray-300 rounded-md p-2" required>
      </div>

      <!-- Name Field -->
      <div>
        <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
        <input type="text" id="name" name="name" class="mt-1 block w-full border border-gray-300 rounded-md p-2" placeholder="Enter name" required>
      </div>
    </form>
  </div>

</body>
</html>
</ModalContainer>