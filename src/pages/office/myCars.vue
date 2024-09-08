<template>
  <div>
    <NavBar></NavBar>
    <div class="flex">
      <sideBar></sideBar>
      <div class="p-10">
        <!--Card 1-->

      </div>
      <div class="bg-gray-200 w-screen m-10 p-2">
        <div class="m-2 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">

          <div class="max-w-sm rounded overflow-hidden shadow-lg" v-for="car in cars" :key="car.id">
            <router-link class="mr-40" :to="{ name: 'detailCar', params: { CarId: car.id } }">
            <img class="w-full" src="@/assets/images/n.jpg" alt="Mountain">
            <div class="">
              <div class="font-bold text-xl ">{{ car.type_name}}</div>
              <p class="text-gray-700 text-base">
                {{ car.color_name }}
              </p>
            </div>
            <!-- <div class="px-6 pt-4 pb-2"> -->
            <div class="">
              <span
                class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 ">{{ car.number }}</span>
              <span
                class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 ">{{  }}</span>
              <!-- <span
                class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 ">#winter</span> -->
            </div>
          </router-link>
          </div>
       
    
           
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import sideBar from '@/components/sideBar.vue';
import NavBar from '@/components/NavBar.vue';
import axios from 'axios'
export default {
  components: {
    sideBar,
    NavBar
  },
  data() {
    return {
      cars: [],
      token: localStorage.getItem('token'),
    }
  },
  mounted() {
    this.showallcars()
  },
  methods: {
    showallcars() {
      axios.get('http://127.0.0.1:8000/api/showAllCarsToOffice', {
        headers: {
          'Authorization': `Bearer ${this.token}`,
          // 'Authorization': `Bearer ${this.tokenA}`
        }
      })
        .then((response) => {
          this.cars = response.data
          console.log("alloffices ", this.cars)
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    },
  },
};
</script>

<style></style>