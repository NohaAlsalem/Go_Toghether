<template>
  <div>
    <NavBar></NavBar>
      <div class="flex">
        <sideBar></sideBar>
        <div class="bg-gray-200 w-screen m-10 p-2">
        <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
          <div class="sm:col-span-full">
            <div v-for="reserv in Reservations" :key="reserv.id"
              class="flex mb-2 items-center px-4 py-3 bg-white hover:bg-gray-100 cursor-pointer">
              <!-- <img class="w-12 h-12 rounded-full mr-4" :src="reserv.image" :alt="reserv.name"> -->
              <div class="flex-1">
                <div class="flex justify-between items-center mb-1">
                  <h2 class="text-lg font-bold">{{ reserv.first_name }}</h2>
                  <div class="flex">
                    <div class="flex mr-2 items-center justify-center w-12 bg-green-500" @click="acceptdriver(reserv.id)">
                      Confirm
                      <svg class="w-6 h-6 text-white fill-current" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
                        <path
                          d="M20 3.33331C10.8 3.33331 3.33337 10.8 3.33337 20C3.33337 29.2 10.8 36.6666 20 36.6666C29.2 36.6666 36.6667 29.2 36.6667 20C36.6667 10.8 29.2 3.33331 20 3.33331ZM16.6667 28.3333L8.33337 20L10.6834 17.65L16.6667 23.6166L29.3167 10.9666L31.6667 13.3333L16.6667 28.3333Z" />
                      </svg>
                    </div>
                    <div class="flex items-center justify-center w-12 bg-red-500" @click="deletedriver(reserv.id)">
                      cancel
                      <svg class="w-6 h-6 text-white fill-current" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
                        <path
                          d="M20 3.36667C10.8167 3.36667 3.3667 10.8167 3.3667 20C3.3667 29.1833 10.8167 36.6333 20 36.6333C29.1834 36.6333 36.6334 29.1833 36.6334 20C36.6334 10.8167 29.1834 3.36667 20 3.36667ZM19.1334 33.3333V22.9H13.3334L21.6667 6.66667V17.1H27.25L19.1334 33.3333Z" />
                      </svg>
                    </div>
                  </div>
                  <!-- <div class="text-gray-500 text-sm">{{ chat.lastMessageTime }}</div> -->
                </div>
                <!-- <p class="text-gray-500">{{ chat.lastMessage }}</p> -->
              </div>
            </div>
          </div>
        </div>
      </div>
        
        <!-- <div class="ml-2 mt-20"> -->
          <div class="m-10">
            <p class="mb-3 text-orange-700">All Trips Must Be Excuted it</p>
          <ul role="list" class="-my-6 divide-y divide-gray-200 m-10">
                      <li class="flex py-6" v-for="reserv in tripsss" :key="reserv.id">
                        <!-- <router-link class="mr-40" :to="{ name: 'detailtrip', params: { TripId: reserv.id } }"> -->
                          
                        <div class="h-24 w-24 flex-shrink-0 p-10 overflow-hidden rounded-md border border-gray-200 flex">
                          <i class="fa-solid fa-dollar  text-orange-700"></i>
                          <!-- <img src="https://tailwindui.com/img/ecommerce-images/shopping-cart-page-04-product-01.jpg" alt="Salmon orange fabric pouch with match zipper, gray zipper pull, and adjustable hip belt." class="h-full w-full object-cover object-center"> -->
                        </div>
                        <div class="ml-4 flex flex-1 flex-col">
                          <div>
                            <div class="flex justify-between text-base font-medium text-gray-900">
                              <h3>
                                <p>from:{{ reserv.first_name}}
                                </p>
                              </h3>
                              <p class="ml-4">to:{{ reserv.destnation }} </p>
                            </div>
                            <p class="mt-1 text-sm text-gray-500">at:{{ reserv.date }}</p>
                          </div>
                          <div class="flex flex-1 items-end justify-between text-sm">
                            <p class="text-gray-500">{{ reserv.time }}</p>
                            <div class="flex">
                              <button type="button" class="font-medium text-indigo-600 hover:text-indigo-500">${{ reserv.cost }}</button>
                            </div>
                          </div>
                        </div>
                        <!-- </router-link> -->
                      </li>
                      <!-- More products... -->
                    </ul>
        </div></div>
        <!-- <div class="bg-gray-200 w-screen m-10 p-2">
        <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
          <div class="sm:col-span-full">
            </div>
            </div>
        </div> -->
      
  </div>
  </template>
  
  <script>
  import sideBar from '@/components/sideBar.vue';
  import NavBar from '@/components/NavBar.vue';
  import axios from 'axios';
  export default {
    data(){
      return{
        Reservations:[],
        tripsss:[],
        token :localStorage.getItem('token'),
      }
    },
    components:{
  sideBar,
  NavBar
    },
    mounted(){
      this.showallReservations()
      this.shawtodotrips()
    },
    methods: {
      shawtodotrips() {
        axios.get('http://127.0.0.1:8000/api/showTravelStatusFalse',  {
                      headers: {
                          'Authorization': `Bearer ${this.token}`,
                      }
                  })
          .then((response) => {
            this.tripsss = response.data
            console.log("alloffices ", this.trips)
          })
          .catch((error) => {
            console.log(error)
            this.errMessage = 'error retrieving data'
          })
      },

      showallReservations() {
        axios.get('http://127.0.0.1:8000/api/showExternalReservations',  {
                      headers: {
                          'Authorization': `Bearer ${this.token}`,
                          // 'Authorization': `Bearer ${this.tokenA}`
                      }
                  })
          .then((response) => {
            this.Reservations = response.data
            console.log("alloffices ", this.Reservations.first_name)
          })
          .catch((error) => {
            console.log(error)
            this.errMessage = 'error retrieving data'
          })
      },
    },
    }
  </script>

<!-- <template>
 
 <div>
  <NavBar></NavBar>
    <div class="flex">
      <sideBar></sideBar>
      <div class=" bg-gray-200 w-screen m-10 p-2">
      <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
        <div class="sm:col-span-full">
          </div>
          </div>
      </div>
    </div>
</div>
</template>

<script>
import sideBar from '@/components/sideBar.vue';
import NavBar from '@/components/NavBar.vue';
export default{
  components: {
        sideBar,
         NavBar
    }
}
</script> -->