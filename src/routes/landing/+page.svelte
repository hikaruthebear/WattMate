<script>
  import {Logo, Button,} from '$lib';
</script>
<div id="webcrumbs" class="w-full flex justify-center bg-white-200">
  <div class="w-full p-15 font-sans">
    <header class="flex flex-col items-center justify-between py-6 md:flex-row">
      <div class="flex items-center gap-2">
        <Logo className="w-10 md:w-11" />
          <path d="M12 2L1 21h22L12 2zm0 4.2L18.6 19H5.4L12 6.2z"></path>
        <span class="text-[40px] font-bold">WattMate</span>
      </div>
      <nav class="mt-4 md:mt-0">
        <ul class="flex flex-wrap items-center gap-6 md:gap-8">

          <li><a href="#about" class="hover:text-primary-600 font-medium transition-colors">About</a></li>

          <li><a href="./login" class="bg-primary-300 hover:bg-yellow-300 rounded-full px-5 py-2 text-white shadow-md transition-colors hover:shadow-lg">Get Started</a>
          </li>

        </ul>
      </nav>
    </header>
    <main>
      <section class="flex flex-col-reverse items-center gap-5 py-16 md:flex-row md:gap-8 md:py-24">
        <div class="w-full md:w-1/2">
          <h1 class="mb-6 text-4xl leading-tight font-bold md:text-5xl lg:text-6xl">
            Powering Convenience Across Remote Communities
          </h1>
          <p class="mb-8 text-lg opacity-80 md:text-xl">
            Experience reliable and accessible electric billing designed for remote communities — simple, seamless, and built for everyone.
          </p>
          
          <div class="flex flex-col gap-4 sm:flex-row">
            <a href="./login" class="hover:border-primary-600 transform rounded-lg border-2 border-gray-300 px-8 py-3 text-center font-medium transition-all duration-300 hover:-translate-y-1 bg-primary-300">Get Started
            </a>
            <a href="#learn" class="hover:border-primary-600 transform rounded-lg border-2 border-gray-300 px-8 py-3 text-center font-medium transition-all duration-300 hover:-translate-y-1">Learn More
            </a>
          </div>
          <div class="mt-8 flex items-center gap-4">
          </div>
        </div>
        <div class="w-full md:w-1/2">

          <!--SVG-->
         <svg viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg" class="h-auto w-full rounded-xl shadow-xl transition-transform duration-500 hover:scale-105">
  <!-- Sky gradient background -->
  <defs>
    <linearGradient id="skyGradient" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#87CEEB;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#E0F6FF;stop-opacity:1" />
    </linearGradient>
    
    <!-- Mountain gradient -->
    <linearGradient id="mountainGradient" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#4A5568;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#2D3748;stop-opacity:1" />
    </linearGradient>
    
    <!-- Power line gradient -->
    <linearGradient id="powerLineGradient" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#FbbF24;stop-opacity:0.8" />
      <stop offset="50%" style="stop-color:#F59E0B;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#FbbF24;stop-opacity:0.8" />
    </linearGradient>
    
    <!-- House gradient -->
    <linearGradient id="houseGradient" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#F7FAFC;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#EDF2F7;stop-opacity:1" />
    </linearGradient>
    
    <!-- Phone screen gradient -->
    <linearGradient id="phoneGradient" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#1A202C;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#2D3748;stop-opacity:1" />
    </linearGradient>
    
    <!-- WattMate app screen gradient -->
    <linearGradient id="appGradient" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#FbbF24;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#F59E0B;stop-opacity:1" />
    </linearGradient>
  </defs>
  
  <!-- Sky background -->
  <rect width="800" height="600" fill="url(#skyGradient)"/>
  
  <!-- Mountains in background -->
  <polygon points="0,400 200,250 400,300 600,200 800,280 800,600 0,600" fill="url(#mountainGradient)"/>
  
  <!-- Power transmission lines -->
  <g stroke="#374151" stroke-width="2" fill="none">
    <!-- Power pole 1 -->
    <line x1="150" y1="350" x2="150" y2="180"/>
    <line x1="130" y1="200" x2="170" y2="200"/>
    <line x1="135" y1="220" x2="165" y2="220"/>
    
    <!-- Power pole 2 -->
    <line x1="350" y1="380" x2="350" y2="210"/>
    <line x1="330" y1="230" x2="370" y2="230"/>
    <line x1="335" y1="250" x2="365" y2="250"/>
    
    <!-- Power pole 3 -->
    <line x1="550" y1="340" x2="550" y2="170"/>
    <line x1="530" y1="190" x2="570" y2="190"/>
    <line x1="535" y1="210" x2="565" y2="210"/>
    
    <!-- Power lines with electrical flow effect -->
    <g stroke="url(#powerLineGradient)" stroke-width="3">
      <line x1="135" y1="220" x2="335" y2="250">
        <animate attributeName="stroke-dasharray" values="0,20;20,0;0,20" dur="2s" repeatCount="indefinite"/>
      </line>
      <line x1="365" y1="250" x2="535" y2="210">
        <animate attributeName="stroke-dasharray" values="0,20;20,0;0,20" dur="2s" repeatCount="indefinite" begin="0.5s"/>
      </line>
    </g>
  </g>
  
  <!-- Remote houses -->
  <!-- House 1 -->
  <g transform="translate(80,320)">
    <polygon points="0,40 40,0 80,40 80,80 0,80" fill="url(#houseGradient)" stroke="#CBD5E0" stroke-width="1"/>
    <polygon points="0,40 40,0 80,40" fill="#E53E3E"/>
    <rect x="15" y="45" width="15" height="25" fill="#3182CE"/>
    <rect x="50" y="45" width="15" height="25" fill="#3182CE"/>
    <rect x="32" y="55" width="16" height="20" fill="#8B4513"/>
    
    <!-- Electrical connection -->
    <line x1="70" y1="40" x2="70" y2="20" stroke="#F59E0B" stroke-width="2"/>
    <circle cx="70" cy="20" r="3" fill="#F59E0B">
      <animate attributeName="r" values="3;5;3" dur="1.5s" repeatCount="indefinite"/>
    </circle>
  </g>
  
  <!-- House 2 -->
  <g transform="translate(280,350)">
    <polygon points="0,40 40,0 80,40 80,80 0,80" fill="url(#houseGradient)" stroke="#CBD5E0" stroke-width="1"/>
    <polygon points="0,40 40,0 80,40" fill="#E53E3E"/>
    <rect x="15" y="45" width="15" height="25" fill="#3182CE"/>
    <rect x="50" y="45" width="15" height="25" fill="#3182CE"/>
    <rect x="32" y="55" width="16" height="20" fill="#8B4513"/>
    
    <!-- Electrical connection -->
    <line x1="70" y1="40" x2="70" y2="20" stroke="#F59E0B" stroke-width="2"/>
    <circle cx="70" cy="20" r="3" fill="#F59E0B">
      <animate attributeName="r" values="3;5;3" dur="1.5s" repeatCount="indefinite" begin="0.5s"/>
    </circle>
  </g>
  
  <!-- House 3 -->
  <g transform="translate(480,310)">
    <polygon points="0,40 40,0 80,40 80,80 0,80" fill="url(#houseGradient)" stroke="#CBD5E0" stroke-width="1"/>
    <polygon points="0,40 40,0 80,40" fill="#E53E3E"/>
    <rect x="15" y="45" width="15" height="25" fill="#3182CE"/>
    <rect x="50" y="45" width="15" height="25" fill="#3182CE"/>
    <rect x="32" y="55" width="16" height="20" fill="#8B4513"/>
    
    <!-- Electrical connection -->
    <line x1="70" y1="40" x2="70" y2="20" stroke="#F59E0B" stroke-width="2"/>
    <circle cx="70" cy="20" r="3" fill="#F59E0B">
      <animate attributeName="r" values="3;5;3" dur="1.5s" repeatCount="indefinite" begin="1s"/>
    </circle>
  </g>
  
  <!-- Modern smartphone showing WattMate app -->
  <g transform="translate(600,350)">
    <!-- Phone body -->
    <rect x="0" y="0" width="120" height="200" rx="15" ry="15" fill="url(#phoneGradient)" stroke="#4A5568" stroke-width="2"/>
    
    <!-- Phone screen -->
    <rect x="10" y="20" width="100" height="160" rx="8" ry="8" fill="#F7FAFC"/>
    
    <!-- WattMate app interface -->
    <!-- Header -->
    <rect x="15" y="25" width="90" height="30" fill="url(#appGradient)" rx="5"/>
    <text x="35" y="42" font-family="Arial, sans-serif" font-size="12" font-weight="bold" fill="white">WattMate</text>
    <circle cx="90" cy="40" r="6" fill="white" opacity="0.9"/>
    <text x="87" y="43" font-family="Arial, sans-serif" font-size="8" fill="#F59E0B">⚡</text>
    
    <!-- Billing info -->
    <rect x="20" y="65" width="80" height="40" fill="#E2E8F0" rx="5"/>
    <text x="25" y="75" font-family="Arial, sans-serif" font-size="8" fill="#4A5568">Current Bill</text>
    <text x="25" y="88" font-family="Arial, sans-serif" font-size="14" font-weight="bold" fill="#2D3748">$45.80</text>
    <text x="25" y="98" font-family="Arial, sans-serif" font-size="7" fill="#718096">Due: Jan 15</text>
    
    <!-- Payment status -->
    <rect x="20" y="115" width="80" height="25" fill="#C6F6D5" rx="5"/>
    <text x="25" y="125" font-family="Arial, sans-serif" font-size="7" fill="#38A169">✓ Last Payment</text>
    <text x="25" y="135" font-family="Arial, sans-serif" font-size="8" font-weight="bold" fill="#2F855A">$42.30</text>
    
    <!-- Usage chart representation -->
    <g transform="translate(25,150)">
      <rect x="0" y="15" width="8" height="15" fill="#FBD38D"/>
      <rect x="12" y="10" width="8" height="20" fill="#F6AD55"/>
      <rect x="24" y="5" width="8" height="25" fill="#ED8936"/>
      <rect x="36" y="8" width="8" height="22" fill="#DD6B20"/>
      <rect x="48" y="12" width="8" height="18" fill="#C05621"/>
      <rect x="60" y="7" width="8" height="23" fill="#9C4221"/>
    </g>
    
    <!-- Notification indicator -->
    <circle cx="95" cy="35" r="4" fill="#E53E3E">
      <animate attributeName="opacity" values="1;0.5;1" dur="2s" repeatCount="indefinite"/>
    </circle>
    <text x="93" y="37" font-family="Arial, sans-serif" font-size="6" fill="white">1</text>
  </g>
  
  <!-- Wireless connection indicators -->
  <g transform="translate(400,250)" opacity="0.7">
    <!-- WiFi waves from phone to power infrastructure -->
    <path d="M 0 50 Q 50 0 100 50" stroke="#3182CE" stroke-width="2" fill="none" stroke-dasharray="5,5">
      <animate attributeName="stroke-dashoffset" values="0;-10;0" dur="2s" repeatCount="indefinite"/>
    </path>
    <path d="M 10 50 Q 50 10 90 50" stroke="#3182CE" stroke-width="2" fill="none" stroke-dasharray="5,5">
      <animate attributeName="stroke-dashoffset" values="0;-10;0" dur="2s" repeatCount="indefinite" begin="0.5s"/>
    </path>
    <path d="M 20 50 Q 50 20 80 50" stroke="#3182CE" stroke-width="2" fill="none" stroke-dasharray="5,5">
      <animate attributeName="stroke-dashoffset" values="0;-10;0" dur="2s" repeatCount="indefinite" begin="1s"/>
    </path>
  </g>
  
  <!-- Floating data packets -->
  <g opacity="0.6">
    <circle cx="200" cy="180" r="4" fill="#3182CE">
      <animateMotion dur="4s" repeatCount="indefinite" rotate="auto">
        <path d="M0,0 Q100,-50 200,0 T400,0"/>
      </animateMotion>
    </circle>
    <circle cx="300" cy="160" r="4" fill="#38A169">
      <animateMotion dur="5s" repeatCount="indefinite" rotate="auto" begin="1s">
        <path d="M0,0 Q-100,50 200,0 T400,0"/>
      </animateMotion>
    </circle>
    <circle cx="400" cy="200" r="4" fill="#F59E0B">
      <animateMotion dur="3s" repeatCount="indefinite" rotate="auto" begin="2s">
        <path d="M0,0 Q50,-30 150,0 T300,0"/>
      </animateMotion>
    </circle>
  </g>
  
  <!-- Sun in the corner -->
  <g transform="translate(700,80)">
    <circle cx="0" cy="0" r="30" fill="#FBD38D" opacity="0.8"/>
    <circle cx="0" cy="0" r="25" fill="#F6AD55"/>
    <!-- Sun rays -->
    <g stroke="#F6AD55" stroke-width="3" opacity="0.6">
      <line x1="-45" y1="0" x2="-35" y2="0"/>
      <line x1="35" y1="0" x2="45" y2="0"/>
      <line x1="0" y1="-45" x2="0" y2="-35"/>
      <line x1="0" y1="35" x2="0" y2="45"/>
      <line x1="-32" y1="-32" x2="-25" y2="-25"/>
      <line x1="25" y1="25" x2="32" y2="32"/>
      <line x1="32" y1="-32" x2="25" y2="-25"/>
      <line x1="-25" y1="25" x2="-32" y2="32"/>
    </g>
  </g>
  
  <!-- Clouds -->
  <g transform="translate(100,100)" opacity="0.7">
    <ellipse cx="0" cy="0" rx="30" ry="15" fill="white"/>
    <ellipse cx="25" cy="-5" rx="25" ry="12" fill="white"/>
    <ellipse cx="50" y="0" rx="20" ry="10" fill="white"/>
    <animateTransform attributeName="transform" type="translate" values="100,100;150,100;100,100" dur="20s" repeatCount="indefinite"/>
  </g>
  
  <g transform="translate(500,120)" opacity="0.5">
    <ellipse cx="0" cy="0" rx="25" ry="12" fill="white"/>
    <ellipse cx="20" cy="-3" rx="20" ry="10" fill="white"/>
    <ellipse cx="40" cy="0" rx="15" ry="8" fill="white"/>
    <animateTransform attributeName="transform" type="translate" values="500,120;450,120;500,120" dur="25s" repeatCount="indefinite"/>
  </g>
</svg>
        </div>
      </section>
      <section class="my-16 rounded-2xl bg-gray-50 py-16 p-15">
        <div class="mb-16 text-center">
          <h2 class="mb-4 text-3xl font-bold md:text-4xl" id="learn">Why Choose WattMate?</h2>
          <p class="mx-auto max-w-2xl text-lg opacity-70">
            Our platform offers exceptional features designed to help you succeed
          </p>
        </div>
        <div class="grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-400/40 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-accent-300 text-3xl">radar</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Tracking key Payments</h3>
            <p class="opacity-70">
              Monitor your billing activity with ease — keep track of recent payments, due dates, and payment statuses in one place.
            </p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-400/40 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-blue-600 text-3xl">security</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Secure &amp; Reliable</h3>
            <p class="opacity-70">
              Enjoy peace of mind with encrypted transactions and a dependable system you can trust anytime.
            </p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-400/40 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-orange-600 text-3xl">location_on</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Remote Accessibility</h3>
            <p class="opacity-70">Seamlessly access billing information from remote locations.</p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-400/40 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-yellow-500 text-3xl">notifications_active</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Real-Time Billing Updates</h3>
            <p class="opacity-70">Receive instant notifications on bill generation, due dates, and successful payments.</p>
          </div>
          <div class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl">
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">manage_accounts</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Admin Oversight Tools</h3>
            <p class="opacity-70">Admins can manage members, track payment history, and oversee total energy usage effortlessly.</p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">insights</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Detailed Analytics</h3>
            <p class="opacity-70">Visualize usage trends, monthly consumption, and payment summaries for smarter decision-making.</p>
          </div>
        </div>
      </section>
      <section id="about" class="py-16 bg-gradient-to-r from-blue-50 to-white">
  <div class="max-w-3xl mx-auto text-center px-6">
    <h2 class="text-3xl md:text-4xl font-bold mb-6">About WattMate</h2>
    <p class="text-lg text-gray-700 mb-4">
      WattMate makes electricity billing simple and secure. Users can view bills, track payments, all in one platform. Admins gain clear insights into usage, manage accounts effortlessly, and streamline billing.
    </p>
    <p class="text-lg text-gray-700">
      Designed for today’s needs, WattMate delivers real‑time updates, powerful analytics, and a smooth experience — so you can focus on what matters most.
    </p>
  </div>
</section>
    </main>
  </div>
</div>