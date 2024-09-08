<template>
  <div class="sticky top-0 z-40">
    <div class="w-full h-20 px-6 bg-gray-100 border-b flex items-center justify-between">
      <!-- left navbar -->
      <div class="flex">
        <!-- mobile hamburger -->
        <div class="inline-block lg:hidden flex items-center mr-4">
          <button class="hover:text-blue-500 hover:border-white focus:outline-none navbar-burger"
            @click="toggleSidebar()">
            <img class="w-20 h-20" viewBox="0 0 512 512" src="@/assets/images/logo.png">
            <!-- <svg class="h-5 w-5" v-bind:style="{ fill: 'black' }" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><title>Menu</title><path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"/></svg> -->
          </button>
        </div>

        <!-- search bar -->
        <div class="relative mt-5 text-ornage-700 font-bold">
          <h1 class="">Go Together</h1>
        </div>
      </div>

      <!-- right navbar -->
      <div class="flex">
        <router-link to="/signinAdmin">
          <button
            class="  border-2 rounded-lg pl-2 pt-1 border-gray-200 pl-2  w-40 h-10 bg-blue-950 mb-2 text-orange-500"
            type="submit">
            Login As Admin
          </button>
        </router-link>
      </div>
    </div>

  </div>
  <div class="flex items-center justify-center h-screen px-8 bg-gray-200">
    <!-- <img src="@/assets/images/login.png" class="width-full height-70%"> -->

    <!-- bg-gradient-to-r from-white from-10% via-white-50 via-30% to-orange-700 to-90% -->
    <div class="position:absolute top-100 left-100 w-full max-w-sm p-6 bg-white rounded-md shadow-md ">
      <div class="flex items-center justify-center">
        <!-- <svg class="w-10 h-10" viewBox="0 0 512 512" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path
            d="M364.61 390.213C304.625 450.196 207.37 450.196 147.386 390.213C117.394 360.22 102.398 320.911 102.398 281.6C102.398 242.291 117.394 202.981 147.386 172.989C147.386 230.4 153.6 281.6 230.4 307.2C230.4 256 256 102.4 294.4 76.7999C320 128 334.618 142.997 364.608 172.989C394.601 202.981 409.597 242.291 409.597 281.6C409.597 320.911 394.601 360.22 364.61 390.213Z"
            fill="#4C51BF" stroke="#4C51BF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
          <path
            d="M201.694 387.105C231.686 417.098 280.312 417.098 310.305 387.105C325.301 372.109 332.8 352.456 332.8 332.8C332.8 313.144 325.301 293.491 310.305 278.495C295.309 263.498 288 256 275.2 230.4C256 243.2 243.201 320 243.201 345.6C201.694 345.6 179.2 332.8 179.2 332.8C179.2 352.456 186.698 372.109 201.694 387.105Z"
            fill="white" />
        </svg> -->
        <img class="w-20 h-20" viewBox="0 0 512 512" src="@/assets/images/logo.png">
        <span class="text-2xl font-semibold text-gray-700">Go Toghether</span>
      </div>

      <form class="mt-4" @submit.prevent="signIn">
        <label class="block">
          <input v-model="formData.email" type="email" placeholder="Email..."
            class="block w-full pl-2 mt-1 h-10 border-solid border-2 border-black-200 rounded-md focus:border-blue-800 focus:ring focus:ring-opacity-40 focus:ring-indigo-500">
        </label>


        <label class="block mt-3">
          <!-- <span class="text-sm text-gray-700">Password</span> -->
          <input v-model="formData.password" type="password" placeholder="Password..."
            class="block w-full pl-2 mt-1 h-10 border-solid border-2 border-black-200 rounded-md focus:border-indigo-600 focus:ring focus:ring-opacity-40 focus:ring-indigo-500">
        </label>

        <div class="flex items-center justify-between mt-4">
          <div>
            <label class="inline-flex items-center">
              <input type="checkbox"
                class="text-indigo-600 border-gray-200 rounded-md focus:border-indigo-600 focus:ring focus:ring-opacity-40 focus:ring-indigo-500">
              <span class="mx-2 text-sm text-gray-600">Remember me</span>
            </label>
          </div>

          <div>
            <router-link to="/requestJoin">
              <div class="block text-sm text-blue-900 fontme hover:underline">creat new account?</div>
            </router-link>
          </div>
        </div>
        <span class="text-red-700 mt-2 mb-2">{{ error }}</span>

        <div class="mt-6">
          <!-- <router-link to="/homeO"> -->
          <button type="submit"
            class="w-full px-4 py-2 text-sm font-bold text-center text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900">
            Sign in
          </button>
          <!-- </router-link> -->
        </div>
      </form>
    </div>
  </div>
</template>
<script>
// import router from '@/router';

import axios from 'axios'

export default {

  // name:'',
  data() {
    return {
      error: null,
      mesaage: '',
      searchText: '',
      token: '',
      formData: {
        email: '',
        password: ''
      },
    };
  },
  methods: {
    signIn() {
      //  if (this.isValidEmail && this.isValidPassword) {
      axios.post('http://127.0.0.1:8000/api/loginOffice', this.formData)
        .then((response) => {
          this.$router.push('/homeO');
          this.token = response.data.token;
          localStorage.setItem('token', this.token);
          this.mesaage = response.data.mesaage;
          console.log(this.token + "lknkj");
          // <router-link to="/home"></router-link>
        })
        .catch((error) => {
          console.log(error);
          this.error = error;
        });
    },
  },
  // components: { router }
}
</script>