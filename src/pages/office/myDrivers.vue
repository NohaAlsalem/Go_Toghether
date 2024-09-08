<template>
  <NavBar></NavBar>
  <div class="flex">
    <sideBar></sideBar>
    <div class="bg-gray-200 w-screen m-10 p-2">

      <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
        <div class="sm:col-span-full">
          <div class="flex flex-col">
            <!-- v-for="office in  alloffices" :key="office.id -->
            <div v-for="driver in  alldrivers" :key="driver.id"
              class="flex mb-2 items-center px-4 py-3 bg-white hover:bg-gray-100 cursor-pointer">
              <router-link class="mr-40" :to="{ name: 'detaildriver', params: { DriverId: driver.id } }">
                <img class="w-12 h-12 rounded-full mr-4" :src="driver.image_driver" :alt="driver.id">
                <div class="flex-1">
                  <div class="flex justify-between items-center mb-1">
                    <h2 class="text-lg font-bold">{{ driver.first_name }}</h2>
                    <div class="text-gray-500 text-sm">{{ driver.lastMessageTime }}</div>
                  </div>
                  <!-- <p class="text-gray-500">{{ driver.lastMessage }}</p> -->
                </div>
              </router-link>
            </div>
          </div>

        </div>
      </div>

      <!-- <div class="flex flex-col">
    <div v-for="(chat, index) in chats" :key="index" class="flex items-center px-4 py-3 hover:bg-gray-100 cursor-pointer">
      <img class="w-12 h-12 rounded-full mr-4" :src="chat.image" :alt="chat.name">
      <div class="flex-1">
        <div class="flex justify-between items-center mb-1">
          <h2 class="text-lg font-bold">{{ chat.name }}</h2>
          <div class="text-gray-500 text-sm">{{ chat.lastMessageTime }}</div>
        </div>
        <p class="text-gray-500">{{ chat.lastMessage }}</p>
      </div>
    </div> -->

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
      alldrivers: [],
      token: localStorage.getItem('token'),
    }
  },
  mounted() {
    this.showalldrivers()
  },
  methods: {
    showalldrivers() {
      axios.get('http://127.0.0.1:8000/api/ShowAlldriver', {
        headers: {

          Authorization: `Bearer ${this.token}`,
        }
      })
        .then((response) => {

          this.alldrivers = response.data
          console.log("alloffices ", this.alldrivers)
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