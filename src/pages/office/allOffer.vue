<template>
   <div>
    <NavBar></NavBar>
    <div class="flex">
      <sideBar></sideBar>
    
      <div class="bg-gray-200 w-screen m-10 p-2">
        <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">

<div class="sm:col-span-3 m-10 mt-0">
    <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">number
        board</label> -->
    <div class="mt-2">
        <input type="text" name="number" id="number" v-model="offer" placeholder="Contain your offer"
            autocomplete="family-name"
            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
    </div>
</div>
<div class="sm:col-span-3 m-10 mt-0">
    <!-- <label for="last-name" class="block text-sm  font-medium leading-6 text-gray-900">add car</label> -->
    <div class="mt-2">
        <button @click="addoffer"
            class="w-full px-4 py-2 text-sm h-20 py-1.5 font-bold text-center text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900">
            <p>add offer</p>
        </button>
    </div>
</div>

</div>
        <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
          <div class="sm:col-span-full">
            <div v-for="offer in offers" :key="offer.id"
              class="flex mb-2 items-center px-4 py-3 bg-white hover:bg-gray-100 cursor-pointer">
              <!-- <img class="w-12 h-12 rounded-full mr-4" :src="driver.image" :alt="offer.description"> -->
              <div class="flex-1">
                <div class="flex justify-between items-center mb-1">
                  <h2 class="text-lg font-bold">{{ offer.description }}</h2>
                  <div class="flex">
            
                    <div class="flex items-center justify-center w-12 bg-red-500" @click="deletoffer(offer.id)">
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
          offers:[],
          // offer:'',
          token :localStorage.getItem('token'),
        }
      },
      components:{
    sideBar,
    NavBar
      },
      mounted(){
        this.showalloffer()
      },
      methods: {
        showalloffer() {
          axios.get('http://127.0.0.1:8000/api/ShowAllOffer',  {
                        headers: {
                            'Authorization': `Bearer ${this.token}`,
                            // 'Authorization': `Bearer ${this.tokenA}`
                        }
                    })
            .then((response) => {
              this.offers = response.data
              console.log("alloffices", this.offers[0].data)
            })
            .catch((error) => {
              console.log(error)
              this.errMessage = 'error retrieving data'
            })
        },

        deletoffer(offerId) {
          axios.get(`http://127.0.0.1:8000/api/RefuseOffire/${offerId}`,  {
                        headers: {
                            'Authorization': `Bearer ${this.token}`,
                            // 'Authorization': `Bearer ${this.tokenA}`
                        }
                    })
            .then((response) => {
             console.log(response)
            })
            .catch((error) => {
        console.log(error)
            })
        },
        addoffer() {
            let formData = new FormData();
            formData.append('description', this.offer);
            // const token = localStorage.getItem('token');
            axios.post('http://127.0.0.1:8000/api/AddOffer', formData, {
                headers: {
                    Authorization: `Bearer ${this.token}`,
                }
            })
                .then(response => {
                    console.log(response + "lknkj")
                    // handle successful response from server
                })
                .catch(error => {
                    console.log(error)
                    // handle error response from server
                });
        },
      },

      }
    </script>