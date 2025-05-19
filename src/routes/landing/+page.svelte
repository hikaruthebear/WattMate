<script>
  import {Logo, Button} from '$lib';
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
          <img
              src="https://via.placeholder.com/600x400?text=WattMate+Dashboard"
              alt="WattMate Dashboard Screenshot"
             class="h-auto w-full rounded-xl shadow-xl transition-transform duration-500 hover:scale-105"
          />
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