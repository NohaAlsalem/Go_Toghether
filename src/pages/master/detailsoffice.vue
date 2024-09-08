<template>
  <div class="w-screen h-screen rounded-lg  text-black">
    <div class="w-full p-2 h-[50px] bg-blue-950 text-align-left items-left">
      <h5 class="head">Go Together</h5>
    </div>

    <!-- this div to top side -->
    <div class="flex mt-10  ml-10">
      <!-- this div to left side -->
      <div class="border-2 rounded-lg border-gray-200 w-80 h-80">
        <img class="rounded-lg w-full h-80" src='{{ Imageurl }}'>
        <!-- @/assets/images/1.jpg -->
      </div>
      <!-- this div to right side -->

      <div class="ml-5">

        <div class="">

          <h2 class="font-bold text-blue-950">{{ office?.name }}</h2>
          <p class="text-blue-950 ml-5">governorate :{{ government }}
            branch:{{ office?.location }} </p>
        </div>

        <div class="mt-7">
          <h2 class="font-bold text-blue-950">Contact Numbers</h2>
          <div class="flex">
            <div class="border-2 rounded-lg border-gray-200 p-2  w-40 h-10 ml-5">
              <p class="text-blue-950 ml-5">{{ office?.phoneTwo }}</p>
            </div>
            <!-- <div class="border-2 rounded-lg border-gray-200 pl-2  w-40 h-10 ml-5"></div> -->

          </div>
        </div>
        <h2 class="ml-0 mt-7 font-bold text-blue-950">Type services office</h2>

        <div class="flex mt-2 ml-5  text-orange-500">
          <div :value="internal" v-on:click="choosetype(1)" v-bind:class="{ internal: internal }" type="text">
            internal
          </div>
          <div :value="external" v-on:click="choosetype(2)" v-bind:class="{ external: external }" type="text">
            <!-- class="border-2 rounded-lg pl-2 pt-1 border-gray-200 pl-1  w-20 h-10  ml-0 mb-0 text-orange-500" -->
            external
          </div>
        </div>

        <div class="font-bold text-blue-950 mt-7">
          date the subscripe
        </div>
        <p class="text-blue-950">22/5/2023 </p>
      </div>

      
    </div>
    
    <!-- this div to bottom -->
    <div class="flex mt-10">
    <div>
        <p class="text-blue-950">drivers of office</p>
        <button v-on:click="componente = 'drivers'" class="w-80 h-2 ml-10 mr-20 bg-blue-950">
        </button>
      </div>
      <div>

        <p class="text-blue-950">cras of office</p>
        <button v-on:click="componente = 'cars'" class="w-80 h-2 ml-10 mr-20 bg-blue-950">
        </button>
      </div>
      <div>
        <p class="text-blue-950">more details of office</p>
        <button v-on:click="componente = 'moredetails'" class="w-80 h-2 ml-10 mr-20 bg-blue-950">
        </button>
      </div>
    </div>
    <div class="flex">
      <!-- <div v-for="driver in drivers" :key="driver?.id">
      <p>{{ driver?.id }}</p>
    </div> -->
  <!--  <div v-for="car in cars" :key="car?.id">
       <p> this car {{ car?.id }}</p>
    </div> -->
    <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-3 ">
        <div class="sm:col-span-full">
          <div class="flex flex-col">
            <!-- v-for="office in  alloffices" :key="office.id -->
            <div v-for="driver in  drivers" :key="driver.id"
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
      <div class=" grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-3 ">
        <div class="sm:col-span-full">
          <div class="flex flex-col">
            <!-- v-for="office in  alloffices" :key="office.id -->
            <div v-for="car in  cars" :key="car.id"
              class="flex mb-2 items-center px-4 py-3 bg-white hover:bg-gray-100 cursor-pointer">
              <router-link class="mr-40" :to="{ name: 'detaildriver', params: { CarId: car.id } }">
                <img class="w-12 h-12 rounded-full mr-4" :src="car.image_driver" :alt="car.id">
                <div class="flex-1">
                  <div class="flex justify-between items-center mb-1">
                    <h2 class="text-lg font-bold">{{  }}</h2>
                    <div class="text-gray-500 text-sm">{{ car.color }}</div>
                  </div>
                  <!-- <p class="text-gray-500">{{ driver.lastMessage }}</p> -->
                </div>
              </router-link>
            </div>
          </div>

        </div>
      </div>
    </div>
   

    <keep-alive>
      <component v-bind:is="componente"></component>
    </keep-alive>
  </div>
</template>
<script>
import axios from 'axios'
import driverS from '@/components/driverS.vue';
import carS from '@/components/carS.vue';
// import moreDetails from '@/components/moreDetails.vue'
export default {
  name: 'detailso-ffice',
  components: {
    'drivers': driverS,
    'cars': carS,
    // 'moredetails': moreDetails
  },
  //     props: {
  //     officeId:null,
  //   },
  data() {

    return {
      office: null,
      drivers: [],
      cars: [],
      starss: [],
      Imageurl:'',
      contract:'',
      government: '',
      branch: '',
      typetravel: '',
      stars: '',
      star: 0,
      numberstar: 0,
      tokenA: localStorage.getItem('tokenA'),
      internal: true,
      external: false,
      componente: 'drivers',
      colorfil: true,
      choosdriver: true,
      chooscar: false,
      choosdetails: false
    }
  },
  mounted() {
    const officeId = this.$route.params.officeId
    this.fetchDataItem(officeId)
    this.getAllStars()
    // this.office = this.fetchDataItem(officeId)
  },

  // computed(){
  //   const officeId = this.$route.params.officeId
  //   this.office = this.fetchDataItem(officeId)
  // },


  //  mounted{
  //     const officeId=this.$route.params.officeId
  //    this.dfetchDataItem(officeId)
  //  },
  methods: {

    choosetype(value) {
      if (value === 1) {
        this.internal = true,
          this.external = false
      }
      if (value === 2) {
        this.internal = false,
          this.external = true
      }
    },

    // chooscomponent(value){
    //   if(value===1){
    //     this.componente = 'drivers';
    //   }
    //   if(value===2){
    //     this.componente = 'cars';
    //   }
    //   if(value===3){
    //     this.componente = 'moredetails';
    //   }

    // },

    getAllStars() {
      axios.get('http://127.0.0.1:8000/api/showstars').then((response) => {
        this.starss = response.data;
      }).catch((error) => {
        console.log(error)
        this.errMessage = 'error retrieving data'
      })
    },


    editStar(officeId) {
      let formData = new FormData();
            formData.append('stars', this.numberstar);
      axios.post(`http://127.0.0.1:8000/api/editStar/${officeId}`,formData, {
        headers: {
          Authorization: `Bearer ${this.tokenA}`,
          // 'Authorization': `Bearer ${this.tokenA}`
        }
      }

      )
        .then((response) => {
          console.log(response.data +"dnhb ")
          this.result = response.data
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })

    }
    ,

    fetchDataItem(officeId) {
      axios.get(`http://127.0.0.1:8000/api/showdetailsOffice/${officeId}`, {
        headers: {
          'Authorization': `Bearer ${this.tokenA}`,
          // 'Authorization': `Bearer ${this.tokenA}`
        }
      })
        .then((response) => {
          console.log(response.data.office[0].name + "      " + "dnhb ")


          this.government = response.data.government
          this.branch = response.data.office[0].branch
          this.stars = response.data.star
          this.government = response.data.government
          this.typetravel = response.data.type_Travel
          this.office = response.data.office[0]
          this.drivers = response.data.office[0].driver
          this.cars = response.data.office[0].car
          this.Imageurl=response.data.image_url
          this.contract=response.data.contract_url

        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    }
    //     fetchDataItem(officeId) {

    //    // fetch data item from your data source based on the ID
    //    // and return it
    //    // for example, using axios to make an API request:
    //    return axios.get(`http://127.0.0.1:8000/api/getInfoOffice/${officeId}`)
    //      .then(response =>response.data)
    //      .catch(error => console.error(error))
    //  }
  }
}
</script>
<style>
.tapbar {
  padding-left: 10;
  padding-right: 20;
  width: 80px;
  height: 2px;
  background-color: orange;
}

.internal {
  background: orange;
  /* rgb(204, 157, 68) ; */
}

.external {
  background: orange;
  /* rgb(204, 157, 68) ; */
}</style>