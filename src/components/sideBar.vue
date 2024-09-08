<script>
import { mapState } from 'vuex'
export default {
  name: 'SideBar',
  computed: {
    ...mapState(['sideBarOpen'])
  }
}
</script>


<template>
  <div class="flex flex-col h-screen w-64 bg-blue-950">
    <div class="flex items-center justify-center h-16">
      <h1 class="text-white font-bold text-xl">My App</h1>
    </div>
    <div class="flex-1 flex flex-col justify-between">
      <ul class="mt-6">
        <li class="px-4 py-2 mb-2">
          <router-link to="/homeO" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-home mr-3"></i>
            Home
          </router-link>
        </li>
        <!-- <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/todotrip" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-tasks mr-3"></i>
            To Do Trips
          </router-link>
        </li> -->
        <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/excutedtrip" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-check-circle mr-3"></i>
            Executed Trips
          </router-link>
        </li>
        <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/addCar" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-car mr-3"></i>
            Add Cars
          </router-link>
        </li>
        <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/requestsdriver" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-user-tie mr-3"></i>
            Requests Driver
          </router-link>
        </li>
          <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/addReward" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-car-side mr-3"></i>
            Reward System
          </router-link></li>
          <!-- <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/addOffer" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-car-side mr-3"></i>
            Add Offer
          </router-link>
          </li> -->
          <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/allOffer" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-tasks mr-3"></i>
            All Offer
          </router-link></li>
       
      </ul>
      <ul>
        <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/mydriver" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-users mr-3"></i>
            My Drivers
          </router-link>
        </li>
        <li class="px-4 py-2 mb-2 border-t">
          <router-link to="/mycar" class="flex items-center text-gray-100 hover:bg-gray-700">
            <i class="fas fa-car-side mr-3"></i>
            My Cars
          </router-link>
         

        </li>
      </ul>
    </div>
  </div>
</template> 
