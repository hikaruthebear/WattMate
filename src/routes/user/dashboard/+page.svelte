<script>
	import { UserSidebar, UserHeader, Card , Heading} from '$lib';
	let sidebar = false;

	let toggleSidebar = () => {
		sidebar = !sidebar;
		
	};

	

	
</script>

<div class="flex h-[100dvh] flex-col overflow-hidden bg-red-500">
	<header class="h-fit bg-blue-500 fixed w-full z-10">
		<UserHeader onclick={toggleSidebar} />
	</header>
	<div class="flex h-full ">
		<div class=" h-full w-64 bg-green-500 fixed shrink-0 md:relative {sidebar ? 'hidden' : 'flex'} ">
			<UserSidebar />
		</div>
		<main class="w-full bg-white-200 p-5 flex flex-col gap-5 overflow-y-auto">
			<div class="flex gap-4 overflow-x-auto mt-10 md:mt-20 shrink-0 p-2">
				<Card label="Current Bill" amount="10,000.50 " icon="credit_card" iconColor="!text-accent-300"/> 
				<Card label="kW/h Used" amount="40 " unit="kWh" icon="electric_bolt" iconColor="!text-yellow-400"/>
				<Card label="Rate" amount="19.50 " icon="trending_up" iconColor="!text-blue-500"/>
				<Card label="Due Date" date="Feb 20, 2025" unit="date" icon="calendar_clock" iconColor="!text-danger-600"/>
			</div>
			<div class="bg-white-50 flex flex-col rounded-lg p-8">

				<Heading heading="Insert Sample Graph Here" />
				 <svg class="w-full h-64 mt-4" viewBox="0 0 600 300" xmlns="http://www.w3.org/2000/svg">
          <!-- Background -->
          <rect width="600" height="300" fill="#f3f4f6"/>
          <!-- Axes -->
          <line x1="50" y1="250" x2="550" y2="250" stroke="#4b5563" stroke-width="2"/>
          <line x1="50" y1="50"  x2="50"  y2="250" stroke="#4b5563" stroke-width="2"/>
          <!-- Bars -->
          <rect x="100" y="150" width="60" height="100" fill="#3b82f6"/> <!-- Jan -->
          <rect x="200" y="170" width="60" height="80"  fill="#3b82f6"/> <!-- Feb -->
          <rect x="300" y="100" width="60" height="150" fill="#3b82f6"/> <!-- Mar -->
          <rect x="400" y="120" width="60" height="130" fill="#3b82f6"/> <!-- Apr -->
          <!-- Labels -->
          <text x="130" y="270" class="text-gray-700 text-sm">Jan</text>
          <text x="230" y="270" class="text-gray-700 text-sm">Feb</text>
          <text x="330" y="270" class="text-gray-700 text-sm">Mar</text>
          <text x="430" y="270" class="text-gray-700 text-sm">Apr</text>
          <!-- Chart Title -->
          <text x="300" y="30" text-anchor="middle" class="text-gray-900 font-semibold text-lg">
            Monthly kWh Usage
          </text>
        </svg>
				
			</div>
		</main>
	</div>
</div>
