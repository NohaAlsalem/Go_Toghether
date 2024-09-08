<template>
<div>
  <NavBar></NavBar>
    <div class="flex">
      <sideBar></sideBar>
      <div class="ml-2 mt-20">
        <ul role="list" class="-my-6 divide-y divide-gray-200">
                    <li class="flex py-6" v-for="trip in trips" :key="trip.id">
                      <router-link class="mr-40" :to="{ name: 'detailtrip', params: { TripId: trip.id } }">
                        
                      <div class="h-24 w-24 flex-shrink-0 overflow-hidden rounded-md border border-gray-200">
                        <img src="https://tailwindui.com/img/ecommerce-images/shopping-cart-page-04-product-01.jpg" alt="Salmon orange fabric pouch with match zipper, gray zipper pull, and adjustable hip belt." class="h-full w-full object-cover object-center">
                      </div>
                      <div class="ml-4 flex flex-1 flex-col">
                        <div>
                          <div class="flex justify-between text-base font-medium text-gray-900">
                            <h3>
                              <a href="#">{{ trip.destnation }}

                              </a>
                            </h3>
                            <p class="ml-4">${{ trip.cost}}</p>
                          </div>
                          <p class="mt-1 text-sm text-gray-500">{{ trip.location }}</p>
                        </div>
                        <div class="flex flex-1 items-end justify-between text-sm">
                          <p class="text-gray-500">{{ trip.date }}</p>

                          <div class="flex">
                            <button type="button" class="font-medium text-indigo-600 hover:text-indigo-500">Remove</button>
                          </div>
                        </div>
                      </div>
                      </router-link>
                    </li>
                    <!-- More products... -->
                  </ul>
      </div>
      <!-- <div class="bg-gray-200 w-screen m-10 p-2">
      <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
        <div class="sm:col-span-full">
          </div>
          </div>
      </div> -->
    </div>
</div>
</template>

<script>
import sideBar from '@/components/sideBar.vue';
import NavBar from '@/components/NavBar.vue';
import axios from 'axios';
export default {
  data(){
    return{
      trips:[],
      token :localStorage.getItem('token'),
    }
  },
  components:{
sideBar,
NavBar
  },
  mounted(){
    this.showalltrips()
  },
  methods: {
    showalltrips() {
      axios.get('http://127.0.0.1:8000/api/showTravelStatusFalse',  {
                    headers: {
                        'Authorization': `Bearer ${this.token}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                })
        .then((response) => {
          this.trips = response.data
          console.log("alloffices ", this.trips)
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    },
  },
  }
</script>