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
                            <input type="text" name="number" id="number" v-model="offer" placeholder="add offer"
                                autocomplete="family-name"
                                class="block w-full pl-2 mt-1 h-10 border-solid border-2 border-black-200 rounded-md focus:border-blue-800 focus:ring focus:ring-opacity-40 focus:ring-indigo-500">
                        </div>
                    </div>
                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm  font-medium leading-6 text-gray-900">add car</label> -->
                        <div class="mt-2">
                            <button @click="addoffer"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-white text-xl bg-blue-950 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                <p>add offer</p>
                            </button>
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
import axios from 'axios'
export default {
    components: {
        sideBar,
        NavBar
    },
    mounted() {
    setTimeout(() => {
      this.loading = false;
    }, 2000);
    // this.getAllColors();
    // this.getAllTypes();

  },
    data() {
        return {
        offer:'',
        }
    },

    methods: {
        addoffer() {
            let formData = new FormData();
            formData.append('description', this.type);
            const token = localStorage.getItem('token');
            axios.post('http://127.0.0.1:8000/api/AddOffer', formData, {
                headers: {
                    Authorization: `Bearer ${token}`,
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

};
</script>

<style></style>