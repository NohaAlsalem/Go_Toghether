<template>
  <!-- <div class="w-screen h-screen flex bg-red"> -->
  <!-- <div class="m-auto border-2 rounded-lg  text-black">
<div class="w-full p-2 h-[50px] bg-blue-950 text-align-left items-left"> -->
  <div class="card text-left ">
    <div class="flex justify-center align-middle">
       <img class="w-20 h-20" viewBox="0 0 512 512" src="@/assets/images/logo.png">
      <h3 class="head text-orange-700 mt-4">Go Together</h3>
    </div>
    
    <h2 class="my_font text-blue-950 font-bold">Welcom To Go Together</h2>
    <p class="my_font  text-blue-950 mb-3">please sign_in to your account and start a supervising</p>
    <form @submit.prevent="signIn">
      <label clas="mt-10">enter your email</label>
      <input  placeholder="username@gmail.com" class="block w-full pl-2 mt-1 h-10  mb-5 border-solid border-2 border-black-200 rounded-md focus:border-indigo-600 focus:ring focus:ring-opacity-40 focus:ring-indigo-500" v-model="formData.email" type="text">
      <!-- <p v-if="!isValidEmail">Please enter a valid email address.</p> -->

      <label clas="mt-10">enter your password</label>
      <!-- <input class="forme" v-model="formData.password" type="text"> -->
      <input placeholder="at least 8 charcter" class="block w-full pl-2 mt-1 h-10 border-solid border-2 border-black-200 rounded-md focus:border-indigo-600 focus:ring focus:ring-opacity-40 focus:ring-indigo-500" id="password" v-model="formData.password" @keyup.enter="encodePassword">
      <!-- 
<span v-if="!isValidPassword">Please enter a valid password.</span> -->


      <span class="text-red-700">{{ error }}</span>

      <!-- <router-link  to="/home"> -->
      <!-- v-if="error=null" -->
      <!-- <button @click="onSubmit" class="Button mt-5">SignIn</button> -->
      <div class="mt-6">
          <!-- <router-link to="/homeO"> -->
          <button @click="onSubmit" type="submit"
            class="w-full px-4 py-2 text-sm font-bold text-center text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900">
            Sign in
          </button>
        <!-- </router-link> -->
        </div>
    

      <!-- <div class="" v-if="error=''"> -->
      <!-- </router-link>  -->
      <!-- </div> -->

      <!-- </router-link> -->
    </form>
    <!-- </div>
</div> -->
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'sig-nin',
  data() {
    return {
      error: null,
      token: '',
      message: '',
      searchText: '',
      formData: {
        email: '',
        password: ''
      }
    }
  },
  computed: {
    isValidEmail() {
      // Regular expression to validate email address
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(this.email);
    },
    isValidPassword() {
      // Custom validation logic for password field
      return this.password.length >= 8;
    },
  },
  methods: {
    encodePassword() {
      // Encoding logic for password field
      this.encodedPassword = btoa(this.password);
    },
    
    signIn() {
      //  if (this.isValidEmail && this.isValidPassword) {
      axios.post('http://127.0.0.1:8000/api/login', this.formData)
        .then((response) => {
          this.$router.push('/home');
          this.token = response.data.token;
          this.mesaage = response.data.mesaage;
          localStorage.setItem('tokenA', this.token);
          console.log(response + "lknkj")
          // <router-link to="/home"></router-link>
        })
        .catch((error) => {
          console.log(error)
          this.error = error
        })

    },
    onSubmit() {
      if (this.formData.email == "" && this.formData.password == "") {
        this.error = "please enter email and password correct"
      }
      if (this.formData.email == "") {
        this.error = "pleas enter your email"
      }
      if (this.formData.password == "") {
        this.error = "pleas enter your password"
      }
    },
    // post(){
    //     this.$http.post("http://127.0.0.1:8000/api/login",{
    //         email:this.admin.email,
    //         password:this.admin.password
    //         }).then(function(data){
    //             this.submited=true
    //             consol.log(data)
    //         });
    //},

  }
}
</script>

<style scoped>
.card {
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: 20px;
  background: #FFFAFA;
  border-radius: 10px;
  background-repeat: repeat;
  width: 400px;
  height: 400px;
}
</style>
