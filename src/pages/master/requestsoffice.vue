<template>
    <div class="bg-gray-200 w-screen m-10 p-2">
        <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">
            <div class="sm:col-span-full">
                <div v-for="requeste in requests" :key="requeste.id"
                    class="flex mb-2 items-center px-4 py-3 bg-white hover:bg-gray-100 cursor-pointer">
                    <router-link class="mr-40" :to="{ name: 'detailsoffice', params: { officeId: requeste.id } }">
                    <img class="w-12 h-12 rounded-full mr-4" :src="requeste.image" :alt="requeste.name">
                    <div class="flex-1">
                        <div class="flex justify-between items-center mb-1">
                            <h2 class="text-lg font-bold">{{ requeste.name }}</h2>
                            <div class="flex">
                                <div class="flex mr-2 items-center justify-center w-12 bg-green-500"
                                    @click="acceptOffice(requeste.id)">
                                    <svg class="w-6 h-6 text-white fill-current" viewBox="0 0 40 40"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M20 3.33331C10.8 3.33331 3.33337 10.8 3.33337 20C3.33337 29.2 10.8 36.6666 20 36.6666C29.2 36.6666 36.6667 29.2 36.6667 20C36.6667 10.8 29.2 3.33331 20 3.33331ZM16.6667 28.3333L8.33337 20L10.6834 17.65L16.6667 23.6166L29.3167 10.9666L31.6667 13.3333L16.6667 28.3333Z" />
                                    </svg>
                                </div>
                                <div class="flex items-center justify-center w-12 bg-red-500" @click="deleteOffice(requeste.id)">
                                    <svg class="w-6 h-6 text-white fill-current" viewBox="0 0 40 40"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M20 3.36667C10.8167 3.36667 3.3667 10.8167 3.3667 20C3.3667 29.1833 10.8167 36.6333 20 36.6333C29.1834 36.6333 36.6334 29.1833 36.6334 20C36.6334 10.8167 29.1834 3.36667 20 3.36667ZM19.1334 33.3333V22.9H13.3334L21.6667 6.66667V17.1H27.25L19.1334 33.3333Z" />
                                    </svg>
                                </div>
                            </div>
                            <!-- <div class="text-gray-500 text-sm">{{ chat.lastMessageTime }}</div> -->
                        </div>
                        <!-- <p class="text-gray-500">{{ chat.lastMessage }}</p> -->
                    </div></router-link>
                </div>
            
            </div>
        </div>
    </div>
    <!-- <div class="w-screen h-screen   border-blue-950">
        <div class=" w-full p-2 mb-10 h-[50px] bg-blue-950 text-align-left items-left">
            <div class="flex">
                <h5 class="head">Go Together</h5>
            </div>
            <ul class="divide-y mt-10 divide-orange-500 dark:divide-blue-950">
                <li class="pb-3 sm:pb-4" v-for="(r, index) in roffices" :key="index">
                    <div class="flex items-center space-x-4">
                        <div class="flex-shrink-0">
                            <img class="w-20 h-20 mt-2 ml-2 rounded-lg" src="@/assets/images/1.jpg" alt="Neil image">
                        </div>
                        <div class="flex-1 min-w-0">
                            <p class="text-sm font-medium text-blue-950 truncate">
                                {{ r.name }}
                            </p>
                            <p class="text-sm text-gray-500 truncate dark:text-gray-400">
                                {{ r.branch }}
                            </p>
                        </div>
                        <div class="inline-flex items-center text-base font-semibold text-orange-500">
                            stars
                        </div>
                    </div>

                </li>
            </ul>
        </div>
    </div> -->
</template>
<script>
import axios from 'axios'
export default {
    name: 'reques-toffice',
    mounted() {
        this.showallrequests()
    },


    data() {

        return {
            requests: [],
            office: null,
            componente: 'drivers',
            colorfil: true,
            choosdriver: true,
            chooscar: false,
            choosdetails: false,
            tokenA: localStorage.getItem('tokenA'),

        }
    },

    methods: {
        showallrequests() {
            axios.get('http://127.0.0.1:8000/api/showAllOfficesnotAccept',
                {
                    headers: {
                        'Authorization': `Bearer ${this.tokenA}`,
                    }
                }
            )
                .then((response) => {

                    this.requests = response.data.AllOffices
                    console.log("alloffices ", this.tokenA)
                })
                .catch((error) => {
                    console.log(error)
                    this.errMessage = 'error retrieving data'
                })
        },
        acceptOffice(requestId) {
            axios.post(`http://127.0.0.1:8000/api/AcceptOffice/${requestId}`,'',
                {
                    headers: {
                        'Authorization': `Bearer ${this.tokenA}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                }).then(() => {
                    console.log("all ", this.tokenA)
                })
                .catch((error) => {
                    console.log(error)
                    this.errMessage = 'error retrieving data'
                })
        },


        deleteOffice(requestId) {
            axios.delete(`http://127.0.0.1:8000/api/RefuseOffice/${requestId}`,
                {
                    headers: {
                        'Authorization': `Bearer ${this.tokenA}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                }).then(() => {
                    console.log("all ", this.tokenA)
                })
                .catch((error) => {
                    console.log(error)
                    this.errMessage = 'error retrieving data'
                })
        }

    }
}
</script>
<style></style>