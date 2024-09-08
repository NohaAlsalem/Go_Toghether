<template>
    <div class="flex">
        <sideBar></sideBar>
        <div class="bg-gray-200 w-screen m-10 p-2">
            <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">


                <div class="sm:col-span-3 m-10 mb-0">
                    <!-- <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">location</label> -->
                    <div class="mt-2">
                        <input type="text" name="location" id="location" v-model="location" placeholder="current location"
                            autocomplete="given-name"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>


                <div class="sm:col-span-3 m-10 mb-0">
                    <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">goal</label> -->
                    <div class="mt-2">
                        <input type="text" name="goal" id="goal" v-model="goal" placeholder="goal"
                            autocomplete="family-name"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>


                <div class="sm:col-span-3 m-10 mb-0">
                    <!-- <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">time</label> -->
                    <div class="mt-2">
                        <input type="text" name="time" id="time" v-model="time" placeholder="time starting"
                            autocomplete="given-name"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>


                <div class="sm:col-span-3 m-10 mb-0">
                    <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">date
                        board</label> -->
                    <div class="mt-2">
                        <input type="text" name="date" id="date" v-model="date" placeholder="date starting"
                            autocomplete="family-name"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>


                <div class="sm:col-span-3 m-10 mb-0">
                    <!-- <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">cost reservation</label> -->
                    <div class="mt-2">
                        <input type="cost" name="cost" id="type" v-model="cost" placeholder="cost reservation"
                            autocomplete="given-name"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>


                <div class="sm:col-span-3 m-10 mb-0">
                    <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">last time
                        board</label> -->
                    <div class="mt-2">
                        <input type="text" name="last" id="last" v-model="last" placeholder="last time to cach"
                            autocomplete="family-name"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                    </div>
                </div>
<!-- 
                <div class="sm:col-span-3 m-10  mt-0">
                    <label for="car" class="block text-sm font-medium leading-6 text-gray-900">car</label>
                    <div class="mt-2">
                        <select id="car" name="car" v-model="car" placeholder="branch_id" autocomplete="country-name"
                            class="block w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:max-w-xs sm:text-sm sm:leading-6">
                            <option v-for="car in cars" :key="car.id" value={{car.id}}>{{ car.first_name }}
               
                  </option>
                        </select>
                    </div>
                </div> -->

                <div class="sm:col-span-3 m-10 ml-30 mt-0">
                    <label for="driver" class="block text-sm font-medium leading-6 text-gray-900">driver</label>
                    <div class="mt-2">
                        <select id="country" name="country" v-model="driver" placeholder="stars" autocomplete="country-name"
                  class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <option v-for="driver in drivers" :key="driver.id" :value="driver.id">{{ driver.first_name }}
                  
                  </option>
                </select>
                    </div>
                </div>

                <div class="sm:col-span-3 m-10 ml-30 mt-0">
                    <!-- <label for="last-name" class="block text-sm  font-medium leading-6 text-gray-900">add trip</label> -->
                    <div class="mt-2">
                            <button @click="addTrip"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900">
                                <p>Add Trip</p>
                            </button>
                        </div>
                    <!-- <div class="mt-2">
                        <button @click="addTrip"
                            class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 bg-orange-800 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </button>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
</template>
    
<script>
import sideBar from '@/components/sideBar.vue';
// import NavBar from '@/components/NavBar.vue';
import axios from 'axios'
export default {
    data() {
        return {
            error: '',
            drivers:[],
            // cars:[],
            driver:'',
            goal: '',
            location: '',
            car: '',
            last: '',
            cost: '',
            date: '',
            time: '',
            
         token :localStorage.getItem('token'),
        }
    },

    mounted(){
     this.getAllDrivers();
    //  this.getAllcars();
    },

    methods: {
        getAllDrivers() {
      axios.get('http://127.0.0.1:8000/api/ShowAlldriver',{headers:{

        Authorization: `Bearer ${this.token}`,
      }}).then((response) => {
        this.drivers = response.data;
      }).catch((error) => {
        console.log(error)
        this.errMessage = 'error retrieving data'
      })
    },


    // this must add function in back to get all cars in offfice
    getAllcars() {
      axios.get('http://127.0.0.1:8000/api/ShowAlldriver',{headers:{

        Authorization: `Bearer ${this.token}`,
      }}).then((response) => {
        this.cars = response.data;
      }).catch((error) => {
        console.log(error)
        this.errMessage = 'error retrieving data'
      })
    },


        addTrip() {
            let formData = new FormData();
            formData.append('destnation', this.goal);
            formData.append('location', this.location);
            formData.append('driver_id', this.driver);
            formData.append('date', this.date);
            formData.append('time', this.time);
            formData.append('cost', this.cost);
            formData.append('last_time_paid', this.last);


            axios.post('http://127.0.0.1:8000/api/addExternal_Travel', formData,{
                headers:{
                    Authorization: `Bearer ${this.token}`,
            }})
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
    components: {
        sideBar,
        // NavBar
    }

};
</script>
    
<style></style>