<template>
 <div> 
  
  <router-view />
   <!-- "vue-tailwind-datepicker": "^1.4.6", -->
  <!-- <div>
    <vue-tailwind-datepicker
      ref="myRef"
      :formatter="formatter"
      v-model="dateValue"
    />
  </div> -->




<!-- <div id="vue-app">
  <h1>Example 1</h1> -->
  <!-- <div v-on:click="available=!available" v-bind:class="{available:available}">
  <span>
    Ryu
  </span></div> -->


  <!-- <h1>Example 2</h1>
  <button v-on:click="nearby=!nearby">Toggle nearby</button>
  <button v-on:click="available=!available">Toggle available</button>
  <div v-bind:class="compClass">
  <span>Ryu</span>
  </div>

  <button v-on:click="error=!error">Toggel Error</button>
  <button v-on:click="success=!success">Toggel Success</button>
  <p v-show="error">ee</p>
  <p v-show="success">ss</p> -->

  <!-- <p v-if="error">
  there has been on error
  </p>
  <p v-else-if="success">
  there has been on success
  </p> -->
<!-- </div> -->



 </div>
</template>
<script>

// import { ref } from 'vue';
// import VueTailwindDatepicker from 'vue-tailwind-datepicker';


export default {
  name: 'App',
  
  components: {
    // VueTailwindDatepicker
  },
  // setup() {
  //   const myRef = ref(null);
  //   const dateValue = ref([]);
  //   const formatter = ref({
  //     date: 'DD MMM YYYY',
  //     month: 'MMM'
  //   });

  //   return {
  //     myRef,
  //     dateValue,
  //     formatter
  //   };
  // },

  //  data() {
    
  //   return {
  //     available:false,
  //     nearby:false,
  //     error:false,
  //     success:false,

  //     selectedDate: null,
  //     // selectedTime: null,
  //   }
  // },
  computed:{
    compClass:function(){
      return{
        available:this.available,
        nearby:this.nearby
      }
    }
  }

}
</script>

<style>
#app {
 
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /* margin-top: 60px; */
}
/* span{
  background: red;
  display: inline-block;
  padding: 10px;
  color: #fff;
  margin: 10px0;
}
.available span{
  background: green;

}
.nearby span:after{
  content:"nearby";
  margin-left: 10px;
} */
</style>
