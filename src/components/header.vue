<template><div class="min-h-full">
    <nav class="bg-gray-800">
      <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div class="flex h-16 items-center">
          <div class="flex items-center">
            <div class="flex-shrink-0 justify-start">
              <img class="h-8 w-8" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=500" alt="Your Company">
            </div>
            <div class="-mr-2 flex justify-start">
            <!-- Mobile menu button -->
            <button type="button" class="relative inline-flex items-center justify-center rounded-md bg-gray-800 p-2 text-gray-400 hover:bg-gray-700 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" aria-controls="mobile-menu" aria-expanded="false">
              <span class="absolute -inset-0.5"></span>
              <span class="sr-only">Open main menu</span>
              <!-- Menu open: "hidden", Menu closed: "block" -->
              <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
              </svg>
              <!-- Menu open: "block", Menu closed: "hidden" -->
              <svg class="hidden h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>
            <div class="hidden md:block justify-end">
              <div class="ml-10 flex items-baseline space-x-4">
                <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                <router-link to="" class="bg-gray-900 text-white rounded-md px-3 py-2 text-sm font-medium" aria-current="page">
                  Home</router-link>
                <router-link to="" class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">Requests</router-link>
                <router-link to="" class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">Add</router-link>
                <router-link to="" class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">Edit star</router-link>
                <router-link to="" class="text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium">Deatils Subscribe</router-link>
              </div>
            </div>
          </div>
          
          
        </div>
      </div>
  
     
    </nav>
  
    <header class="bg-white shadow">
      <div class="mx-auto max-w-7xl px-4 py-6 sm:px-6 lg:px-8">
        <h1 class="text-3xl font-bold tracking-tight text-gray-900">Dashboard</h1>
      </div>
    </header>
    <main>
      <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
        <!-- Your content -->
      </div>
    </main>
  </div>
</template>
  