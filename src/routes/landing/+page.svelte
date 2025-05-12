ci<script>
  import {Logo} from '$lib';
</script>

<div id="webcrumbs" class="w-full flex justify-center">
  <div class="w-[1200px] p-8 font-sans">
    <header class="flex flex-col items-center justify-between py-6 md:flex-row">
      <div class="flex items-center gap-2">
        <svg class="text-primary-600 h-10 w-10" viewBox="0 0 24 24" fill="currentColor">
          <path d="M12 2L1 21h22L12 2zm0 4.2L18.6 19H5.4L12 6.2z"></path>
        </svg>
        <span class="text-2xl font-bold">WattMate</span>
      </div>
      <nav class="mt-4 md:mt-0">
        <ul class="flex flex-wrap items-center gap-6 md:gap-8">
          <li><a href="#" class="hover:text-primary-600 font-medium transition-colors">Home</a></li>
          <li>
            <a href="#" class="hover:text-primary-600 font-medium transition-colors">Features</a>
          </li>
          <li><a href="#" class="hover:text-primary-600 font-medium transition-colors">About</a></li>
          <li>
            <a href="#" class="hover:text-primary-600 font-medium transition-colors">Pricing</a>
          </li>
          <li>
            <a href="#" class="hover:text-primary-600 font-medium transition-colors">Contact</a>
          </li>
          <li>
            <a
              href="#"
              class="bg-primary-600 hover:bg-primary-700 rounded-full px-5 py-2 text-white shadow-md transition-colors hover:shadow-lg"
              >Get Started</a
            >
          </li>
        </ul>
      </nav>
    </header>
    <main>
      <section class="flex flex-col-reverse items-center gap-10 py-16 md:flex-row md:gap-16 md:py-24">
        <div class="w-full md:w-1/2">
          <h1 class="mb-6 text-4xl leading-tight font-bold md:text-5xl lg:text-6xl">
            Transform Your Ideas Into Reality
          </h1>
          <p class="mb-8 text-lg opacity-80 md:text-xl">
            Build beautiful, responsive, and scalable solutions with our cutting-edge platform. Start your journey
            today and see the difference.
          </p>
          <div class="flex flex-col gap-4 sm:flex-row">
            <a
              href="#"
              class="bg-primary-600 hover:bg-primary-700 transform rounded-lg px-8 py-3 text-center font-medium text-white shadow-lg transition-all duration-300 hover:-translate-y-1 hover:shadow-xl"
              >Get Started</a
            >
            <a
              href="#"
              class="hover:border-primary-600 transform rounded-lg border-2 border-gray-300 px-8 py-3 text-center font-medium transition-all duration-300 hover:-translate-y-1"
              >Learn More</a
            >
          </div>
          <div class="mt-8 flex items-center gap-4">
            <div class="flex -space-x-3">
              <img
                src="https://images.unsplash.com/photo-1511367461989-f85a21fda167?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w3MzkyNDZ8MHwxfHNlYXJjaHwxfHxwcm9maWxlfGVufDB8fHx8MTc0NjA2NzgyN3ww&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080"
                alt="User"
                class="h-10 w-10 rounded-full border-2 border-white"
              />
              <img
                src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w3MzkyNDZ8MHwxfHNlYXJjaHwyfHxwcm9maWxlfGVufDB8fHx8MTc0NjA2NzgyN3ww&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080"
                alt="User"
                class="h-10 w-10 rounded-full border-2 border-white"
              />
              <img
                src="https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w3MzkyNDZ8MHwxfHNlYXJjaHwzfHxwcm9maWxlfGVufDB8fHx8MTc0NjA2NzgyN3ww&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080"
                alt="User"
                class="h-10 w-10 rounded-full border-2 border-white"
              />
            </div>
            <p class="text-sm opacity-80">
              Join over <span class="font-bold">10,000+</span> happy customers
            </p>
          </div>
        </div>
        <div class="w-full md:w-1/2">
          <img
            src="https://images.unsplash.com/photo-1579762715118-a6f1d4b934f1?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w3MzkyNDZ8MHwxfHNlYXJjaHwxfHxpbGx1c3RyYXRpb258ZW58MHx8fHwxNzQ2MDc1MTE1fDA&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080"
            alt="Hero illustration"
            class="h-auto w-full rounded-xl shadow-xl transition-transform duration-500 hover:scale-105"
          />
        </div>
      </section>
      <section class="my-16 rounded-2xl bg-gray-50 py-16">
        <div class="mb-16 text-center">
          <h2 class="mb-4 text-3xl font-bold md:text-4xl">Why Choose Apex?</h2>
          <p class="mx-auto max-w-2xl text-lg opacity-70">
            Our platform offers exceptional features designed to help you succeed
          </p>
        </div>
        <div class="grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">bolt</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Lightning Fast</h3>
            <p class="opacity-70">
              Experience unparalleled speed with our optimized infrastructure and advanced algorithms.
            </p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">security</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Secure &amp; Reliable</h3>
            <p class="opacity-70">
              Your data is protected with enterprise-grade security and 99.9% uptime guarantee.
            </p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">trending_up</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Scalable Solution</h3>
            <p class="opacity-70">Grow your business with confidence using our highly scalable platform.</p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">support_agent</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">24/7 Support</h3>
            <p class="opacity-70">Our dedicated support team is always available to help you resolve any issues.</p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">integration_instructions</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Easy Integration</h3>
            <p class="opacity-70">Seamlessly integrate with your existing tools and workflows using our API.</p>
          </div>
          <div
            class="transform rounded-xl bg-white p-8 shadow-md transition-all duration-300 hover:-translate-y-2 hover:shadow-xl"
          >
            <div class="bg-primary-100 mb-6 flex h-14 w-14 items-center justify-center rounded-lg">
              <span class="material-symbols-outlined text-primary-600 text-3xl">insights</span>
            </div>
            <h3 class="mb-3 text-xl font-bold">Detailed Analytics</h3>
            <p class="opacity-70">Make data-driven decisions with our comprehensive analytics dashboard.</p>
          </div>
        </div>
      </section>
      <section class="py-16">
        <div class="flex flex-col items-center gap-12 md:flex-row">
          <div class="w-full md:w-1/2">
            <img
              src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3w3MzkyNDZ8MHwxfHNlYXJjaHwxfHxkYXNoYm9hcmR8ZW58MHx8fHwxNzQ1OTUzMzc4fDA&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080"
              alt="Platform dashboard"
              class="h-auto w-full rounded-xl shadow-lg"
            />
          </div>
          <div class="w-full md:w-1/2">
            <h2 class="mb-6 text-3xl font-bold md:text-4xl">Powerful Tools for Modern Businesses</h2>
            <p class="mb-8 text-lg opacity-70">
              Our comprehensive suite of features empowers you to streamline operations, boost productivity, and
              drive growth.
            </p>
            <div class="space-y-6">
              <details class="group cursor-pointer rounded-lg bg-gray-50 p-4">
                <summary
                  class="group-hover:text-primary-600 flex items-center justify-between font-semibold transition-colors"
                >
                  Advanced Analytics Dashboard
                  <span class="material-symbols-outlined transition-transform group-open:rotate-180"
                    >expand_more</span
                  >
                </summary>
                <div class="mt-4">
                  <p class="opacity-70">
                    Get real-time insights with customizable dashboards, interactive charts, and exportable reports
                    that help you make informed decisions.
                  </p>
                </div>
              </details>
              <details class="group cursor-pointer rounded-lg bg-gray-50 p-4">
                <summary
                  class="group-hover:text-primary-600 flex items-center justify-between font-semibold transition-colors"
                >
                  Seamless Collaboration
                  <span class="material-symbols-outlined transition-transform group-open:rotate-180"
                    >expand_more</span
                  >
                </summary>
                <div class="mt-4">
                  <p class="opacity-70">
                    Work together efficiently with team members through shared workspaces, real-time editing, and
                    integrated communication tools.
                  </p>
                </div>
              </details>
            </div>
          </div>
        </div>
      </section>
    </main>
  </div>
</div>