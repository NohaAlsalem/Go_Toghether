<template>
    <div>
        <NavBar></NavBar>
        <div class="flex">
            <sideBar></sideBar>
            <div class="bg-gray-200 w-screen m-10 p-2">
                <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">


                    <div class="sm:col-span-3 m-10 mt-0">
                        <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">type</label>
                        <div class="mt-2">
                            
                            <select type="text" name="type" id="typecar" v-model="type" placeholder="Enter type of car"
                                autocomplete="given-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                <!-- class="block p-2 w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"> -->
                                <option v-for="typee in typecars" :key="typee.id" :value="typee.id">
                                    {{ typee.name }}
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="sm:col-span-3 m-10 mt-0">
                        <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">color</label>
                        <div class="mt-2">
                            <select type="text" name="color" id="color" v-model="color" placeholder="color the car"
                                autocomplete="family-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                                <option v-for="colo in colors" :key="colo.id" :value="colo.id" >{{ colo.name }}</option>
                        </select>
                    </div>
                    </div>


                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">cost km</label> -->
                        <div class="mt-2">
                            <input type="text" name="cost" id="cost" v-model="cost" placeholder="Enter cost to car"
                                autocomplete="given-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </div>
                    </div>


                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">number
                            board</label> -->
                        <div class="mt-2">
                            <input type="text" name="number" id="number" v-model="number" placeholder="number the car"
                                autocomplete="family-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </div>
                    </div>

                    <div class="sm:col-span-3 m-10 mt-0">
                        <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">image car

                        </label>
                        <div class="flex space-x-4 items-center">
                            <input
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                                type="file" @change="onFileSelected(1)">
                        </div>
                        <!-- </div> -->
                        <!-- <div class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                            :style="{ 'background-image': `url(${image})` }" @click="selectImage">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="orange" class="w-6 h-6">
                                <path d="M12 9a3.75 3.75 0 100 7.5A3.75 3.75 0 0012 9z" />
                                <path fill-rule="evenodd"
                                    d="M9.344 3.071a49.52 49.52 0 015.312 0c.967.052 1.83.585 2.332 1.39l.821 1.317c.24.383.645.643 1.11.71.386.054.77.113 1.152.177 1.432.239 2.429 1.493 2.429 2.909V18a3 3 0 01-3 3h-15a3 3 0 01-3-3V9.574c0-1.416.997-2.67 2.429-2.909.382-.064.766-.123 1.151-.178a1.56 1.56 0 001.11-.71l.822-1.315a2.942 2.942 0 012.332-1.39zM6.75 12.75a5.25 5.25 0 1110.5 0 5.25 5.25 0 01-10.5 0zm12-1.5a.75.75 0 100-1.5.75.75 0 000 1.5z"
                                    clip-rule="evenodd" />
                            </svg>
                            <input type="file" ref="fileInput" @input="pickconFile" @change="onFileChange"
                                placeholder="image to premit" :v-model="image">
                        </div> -->
                    </div>

                    <div class="sm:col-span-3 m-10 mt-0">
                                             <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">image
                            board</label>
                        <div class="flex space-x-4 items-center">
                            <input
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                                type="file" @change="onFileSelected(2)">
                        </div>
                    </div>
                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">number
                            board</label> -->
                        <div class="mt-2">
                            <input type="text" name="number" id="number" v-model="numberOfSeatin" placeholder="number off seating"
                                autocomplete="family-name"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                        </div>
                    </div>

                    <div class="sm:col-span-3 m-10 mt-0">
                        <!-- <label for="last-name" class="block text-sm  font-medium leading-6 text-gray-900">add car</label> -->
                        <div class="mt-2">
                            <button @click="addCar"
                                class="block p-2 w-full h-20 rounded-md border-0 py-1.5 text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900">
                                <p>add car</p>
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
    this.getAllColors();
    this.getAllTypes();

  },
    data() {
        return {
            colors: [],
            typecars: [],
            file1: '',
            file2: '',
            type: null,
            color:null,
            number: null,
            cost: null,
            numberOfSeatin:null
        }
    },

    methods: {
        onFileSelected(field) {
            const input = event.target;
            const file = input.files[0];
            if (field === 1) {
                this.file1 = file;
            }
            else {
                this.file2 = file;
            }
        },

        getAllTypes() {
            axios.get('http://127.0.0.1:8000/api/showCar_type').then((response) => {
                this.typecars = response.data;
            }).catch((error) => {
                console.log(error)
                this.errMessage = 'error retrieving data'
            })
        },

        getAllColors() {
            axios.get('http://127.0.0.1:8000/api/showcolor').then((response) => {
                this.colors = response.data;
            }).catch((error) => {
                console.log(error)
                this.errMessage = 'error retrieving data'
            })
        },

        addCar() {
            let formData = new FormData();
            formData.append('type_id', this.type);
            formData.append('color_id', this.color);
            formData.append('cost', this.cost);
            formData.append('number', this.number);
            formData.append('image', this.file1);
            formData.append('agency_image', this.file2);
            formData.append('numberOfSeatin',this.numberOfSeatin)
            const token = localStorage.getItem('token');
            axios.post('http://127.0.0.1:8000/api/addCarsbyOffice', formData, {
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