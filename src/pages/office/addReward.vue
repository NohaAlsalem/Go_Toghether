<template>
    <div>
        <NavBar></NavBar>
        <div class="flex">
            <sideBar></sideBar>
            <div class="bg-gray-200 w-screen m-10 p-2">
                <div class="flex justify-center">
                    <h class="text-blue-950 font-bold">
                        to encourage your drivers add reward system or 
                    </h>
                    <h></h>
                    <h class="text-orange-700 font-bold" @click="updatreward">
                         update exist system
                    </h>

                </div>
                <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">

                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">number
                            board</label> -->
                        <div class="mt-2">
                            <input type="text" name="number" id="number" v-model="point" placeholder="add number of point"
                                autocomplete="family-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </div>
                    </div>
                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">number
                            board</label> -->
                        <div class="mt-2">
                            <input type="text" name="number" id="number" v-model="amount" placeholder="add amount"
                                autocomplete="family-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </div>
                    </div>
                    <div class="sm:col-span-2 m-10 mt-0"></div>
                    <div class="sm:col-span-2 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm  font-medium leading-6 text-gray-900">add car</label> -->
                        <div class="mt-2">
                            <button @click="addreward"
                            class="w-full px-4 py-2 text-sm h-20 py-1.5 font-bold text-center text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900">
                                <!-- class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-white text-xl bg-blue-950 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"> -->
                                <p>add reward</p>
                            </button>
                        </div>
                    </div>
                    <div class="sm:col-span-2 m-10 mt-0"></div>

                </div>
                <div class=" grid grid-cols-1 gap-x-3 gap-y-3 sm:grid-cols-6 ">
<div class="sm:col-span-3 m-10 mt-0  text-blue-950">
Number Of Points in Your Syestm:
</div>
<div class="sm:col-span-3 m-10 mt-0 text-orange-700">{{ myOffer?.num_point }}</div>
<div class="sm:col-span-3 m-10 mt-0  text-blue-950">
   Amount to Driver:
</div>
<div class="sm:col-span-3 m-10 mt-0 text-blue-950"> {{ myOffer?.amount }}</div>
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
            myOffer:null,
        point:null,
        amount:null,
        token : localStorage.getItem('token')
        }
    },
    mounted() {
    setTimeout(() => {
      this.loading = false;
    }, 2000);
    this.showRewardSystem()
    // this.getAllColors();
    // this.getAllTypes();

  },
    methods: {
        addreward() {
            let formData = new FormData();
            formData.append('amount', this.amount);
            formData.append('num_point',this.point)
            axios.post('http://127.0.0.1:8000/api/AddReward', formData, {
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
        updatreward() {
            let formData = new FormData();
            formData.append('amount', this.amount);
            formData.append('num_point',this.point)
            axios.post('http://127.0.0.1:8000/api/UpdateReward', formData, {
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
        showRewardSystem() {
          axios.get('http://127.0.0.1:8000/api/ShowAllReward',  {
                        headers: {
                            'Authorization': `Bearer ${this.token}`,
                            // 'Authorization': `Bearer ${this.tokenA}`
                        }
                    })
            .then((response) => {
              this.myOffer = response.data
              console.log("alloffices", this.myOffer.amount)
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