<template>
  <div class="rounded-lg  text-black">
    <div class="w-full p-2 h-[50px] bg-blue-950 text-align-left items-left">
      <div class="flex">
        <h5 class="head">Go Together</h5>
        <!-- <input class="search  mx-auto mr-10" v-model="searchby" 
       type="text" placeholder="search by" label="search to office"> -->


       <!-- <div class="pt-4 mb-8 relative">
      <input type="text" v-model="searchQuery" 
      @input="getsearchResults" placeholder="Search for a city or state"
      class="py-2 px-1 w-full bg-transparent border-b focus:border-weather-secondary focus:outline-none focus:shadow-[0px_1px_0_0_#004E71]">
      <ul class="absolute bg-weather-secondary text-white w-fill shadow-md py-2 px-1 top-[66px]" v-if="mapboxSearchResult">
        <li v-for="searchResult in result" :key="searchResult.id" class="py-2 cursor-pointer">{{ searchResult.place_name }}</li>
      </ul>
      <p v-if="searchError">Sorry, something went worng, please try again</p>-->
      <!-- <p v-if="!searchError &&result===''">noresult match your query,try a different term.</p> -->
    <!--</div> -->









     <!--  @input="searchbyname" -->
      <!-- <p>{{ result.name }}</p> -->
      <!-- <span v-for="search in searchby" :key="search.id">
      {{search.name}}
      </span> -->
        <!-- <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" class="w-6 h-6">
  <path fill-rule="evenodd" d="M10.5 3.75a6.75 6.75 0 100 13.5 6.75 6.75 0 000-13.5zM2.25 10.5a8.25 8.25 0 1114.59 5.28l4.69 4.69a.75.75 0 11-1.06 1.06l-4.69-4.69A8.25 8.25 0 012.25 10.5z" clip-rule="evenodd" />
</svg> -->
        <!-- @click="showbranchs" -->
        <!-- v-for="branch in  branchs" :key="branch.id"

        <select class="button">
          <option @click="searchbyname">Name</option>
          <option>Branch-->
          <!-- <select name="branch" id="branch" v-model="searchby">
            <option v-for="branch in branchs" :key="branch.id" @click="searchbyBranch(branch.id)">{{ branch.name }}</option>
          </select> -->
          
          <!-- </option>
        </select> -->
        <!-- <button class="button  mn-auto mt-2 " >search by</button> -->
      </div>
    </div>

    <!-- <div class="conatiner 	max-height: fit-contentw-screen h-screen"> -->
    <div class="container mt-10 mb-10 text-center">
      <p class="head font-normal ">We Will Provide You Easier Management Service</p>
      <p class="text-blue-950">here willl write discription about app</p>
      <!-- <img class="h-25" src="@/assets/images/img.png" > -->
    </div>

    <!-- <img src="@/assets/images/img.png"/> -->
    <!-- <div style="position:absolute; left:0; top: 0; height:35%; width:100%; border: 2px solid red;"> -->
    <div class="flex mx-auto  ml-80">
      <!-- <router-link class="mr-40" to="/alloffice"> -->
      <a class="mr-40" href="#all">
        <div class="item  font-bold bg-blue-950 p-3">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" class="w-6 h-6">
            <path
              d="M11.644 1.59a.75.75 0 01.712 0l9.75 5.25a.75.75 0 010 1.32l-9.75 5.25a.75.75 0 01-.712 0l-9.75-5.25a.75.75 0 010-1.32l9.75-5.25z" />
            <path
              d="M3.265 10.602l7.668 4.129a2.25 2.25 0 002.134 0l7.668-4.13 1.37.739a.75.75 0 010 1.32l-9.75 5.25a.75.75 0 01-.71 0l-9.75-5.25a.75.75 0 010-1.32l1.37-.738z" />
            <path
              d="M10.933 19.231l-7.668-4.13-1.37.739a.75.75 0 000 1.32l9.75 5.25c.221.12.489.12.71 0l9.75-5.25a.75.75 0 000-1.32l-1.37-.738-7.668 4.13a2.25 2.25 0 01-2.134-.001z" />
          </svg>

          <h2 class="text-orange-500">Display All Office</h2>
        </div>
      </a>
      <!-- </router-link> -->

      <router-link class="mr-40" to="/add">
        <div class="item font-bold bg-blue-950 p-3">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" class="w-6 h-6 ">
            <path fill-rule="evenodd"
              d="M7.502 6h7.128A3.375 3.375 0 0118 9.375v9.375a3 3 0 003-3V6.108c0-1.505-1.125-2.811-2.664-2.94a48.972 48.972 0 00-.673-.05A3 3 0 0015 1.5h-1.5a3 3 0 00-2.663 1.618c-.225.015-.45.032-.673.05C8.662 3.295 7.554 4.542 7.502 6zM13.5 3A1.5 1.5 0 0012 4.5h4.5A1.5 1.5 0 0015 3h-1.5z"
              clip-rule="evenodd" />
            <path fill-rule="evenodd"
              d="M3 9.375C3 8.339 3.84 7.5 4.875 7.5h9.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625V9.375zm9.586 4.594a.75.75 0 00-1.172-.938l-2.476 3.096-.908-.907a.75.75 0 00-1.06 1.06l1.5 1.5a.75.75 0 001.116-.062l3-3.75z"
              clip-rule="evenodd" />
          </svg>
          <h2 class="text-orange-500">Add New Office</h2>
        </div>
      </router-link>

      <router-link class="mr-40" to="/request">
        <div class="item  font-bold bg-blue-950 p-3">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" class="w-6 h-6">
            <path fill-rule="evenodd"
              d="M7.502 6h7.128A3.375 3.375 0 0118 9.375v9.375a3 3 0 003-3V6.108c0-1.505-1.125-2.811-2.664-2.94a48.972 48.972 0 00-.673-.05A3 3 0 0015 1.5h-1.5a3 3 0 00-2.663 1.618c-.225.015-.45.032-.673.05C8.662 3.295 7.554 4.542 7.502 6zM13.5 3A1.5 1.5 0 0012 4.5h4.5A1.5 1.5 0 0015 3h-1.5z"
              clip-rule="evenodd" />
            <path fill-rule="evenodd"
              d="M3 9.375C3 8.339 3.84 7.5 4.875 7.5h9.75c1.036 0 1.875.84 1.875 1.875v11.25c0 1.035-.84 1.875-1.875 1.875h-9.75A1.875 1.875 0 013 20.625V9.375zM6 12a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V12zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM6 15a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V15zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75zM6 18a.75.75 0 01.75-.75h.008a.75.75 0 01.75.75v.008a.75.75 0 01-.75.75H6.75a.75.75 0 01-.75-.75V18zm2.25 0a.75.75 0 01.75-.75h3.75a.75.75 0 010 1.5H9a.75.75 0 01-.75-.75z"
              clip-rule="evenodd" />
          </svg>
          <h2 class="text-orange-500">Requests Office</h2>
        </div>
      </router-link>
    </div>


    <div class="flex ml-20 mt-20">
      <h5 class=" font-bold text-blue-950">offic of five stars</h5>
    </div>
    <h1 v-if="errMessage">{{ errMessage }}</h1>
    <div class="container flex m-auto  grid grid-rows-1 gap-4">
      <div class="wrapper">
        <div class="control next"><svg aria-hidden="true" class="w-4 h-4 ml-2 -mr-1 mt-2" fill="white" viewBox="0 0 20 20"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
              d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
              clip-rule="evenodd"></path>
          </svg></div>
        <div class="slider"></div>


        <!-- <div v-if="loading" class="flex justify-center items-center h-screen">
      <div class="spinner"></div>
    </div>
    <div v-else > -->
        <div class="relative mr-4 rounded-lg border-2" v-for="office in  fiveSOffice" :key="office.id">
          <!-- <div class=" mr-2 w-80 h-40 bg-white border border-gray-200 rounded-lg shadow" v-for="(office,index) in fivestaroffices" :key="index"> -->
          <!-- <router-link class="mr-40 flex" to="/details"> -->
          <router-link class="mr-40" :to="{ name: 'detailsoffice', params: { officeId: office.id } }">
            <img src='@/assets/images/n.jpg' :alt="office.name" class="w-full h-auto object-cover rounded-lg ">
            <!-- @/assets/images/1.jpg -->
            <div class="absolute bottom-0 left-0 right-0 bg-gray-900 bg-opacity-50 text-white p-4">
              <h2 class="text-xl font-bold">{{ office.name }}</h2>
              <p class="text-sm text-blue-950">{{ office.branch }}</p>
            </div>

          </router-link>
        </div>        
      </div>
    </div>

    <!-- <div class="divide-y mt-20 divide-gray-200 dark:divide-gray-700"> -->
    <h2 class="font-bold text-blue-950 mt-20 ml-20" id="all">Display All Office</h2>
    <!-- <div v-if="loading" class="flex justify-center items-center h-screen">
      <div class="spinner "></div>
    </div> -->
    <!-- <div v-else> -->
      <div>
        <div class="m-2 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6 ">

<div class="max-w-sm rounded overflow-hidden shadow-lg" v-for="offic in  alloffices" :key="offic.id">
  <router-link class="mr-40" :to="{ name: 'detailsoffice', params: { officeId: offic.id+1-1 } }">
  <img class="w-full" src="@/assets/images/n.jpg" alt="Mountain">
  <div class="">
    <div class="font-bold text-xl ">{{ offic.name}}</div>
    <p class="text-gray-700 text-base">
      {{ offic.branch }}
    </p>
  </div>
  <!-- <div class="px-6 pt-4 pb-2"> -->
  <div class="">
    <span
      class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 ">{{ offic.phoneOne }}</span>
    <span
      class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 ">{{ offic.type_id }}</span>
    <!-- <span
      class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 ">#winter</span> -->
  </div>
</router-link>
</div>


</div> 
      <!-- display content when not loading -->
      <!-- <div class="container  m-auto mt-5 grid grid-cols-4 gap-4">
        <div class="max-w-sm ml-20 mr-5 mb-5 w-50 h-40 bg-white border border-gray-200 rounded-lg shadow"
          v-for="offic in  alloffices" :key="offic.id">
          <router-link class="mr-40" :to="{ name: 'detailsoffice', params: { officeId: offic.id+1-1 } }">
            <div> <a href="#">
                <img class="rounded-t-lg w-full h-20" src="@/assets/images/1.jpg" alt="" />
              </a>
              <div class="p-2">
                <a href="#">
                  <h5 class="text-1xl font-bold tracking-tight text-blue-950">{{ offic.name }}</h5>
                </a>
                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">{{ offic.id }}</p>
              </div>
            </div>
          </router-link>
          
        </div>
      </div> -->
    </div>

    <!-- </div> -->
  </div>
</template>
<script>
import axios from 'axios'
export default {
  name: 'H-ome',

  data() {
    return {
      searchby:'',
      result:null,
      loading: true,
      fiveSOffice: [],
      alloffices: [],
      branchs: [],
      namebranch:'',
       searchQuery:"",
       queryTimeout:null,
mapboxSearchResult:null,
searchError:null,


      tokenA: localStorage.getItem('tokenA'),
      errMessage: '',


    }
  },
  mounted() {
    // setTimeout(() => {
    //   this.loading = false;
    // }, 2000);
    this.showalloffices()
    this.get5stars()
    // this.getAllStars()
  },
  methods: {

    get5stars() {
      axios.get('http://127.0.0.1:8000/api/getOfficesByStars/5', {
                    headers: {
                        Authorization: `Bearer ${this.tokenA}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                })
        .then((response) => {
          this.fiveSOffice = response.data
          // console.log("alloffices ", this.alloffices)
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    },

    showalloffices() {
      axios.get('http://127.0.0.1:8000/api/showAllOffices')
        .then((response) => {
          this.alloffices = response.data.data
          console.log("alloffices ", this.alloffices)
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    },

    getAllBranch() {
      axios.get('http://127.0.0.1:8000/api/alllBranches').then((response) => {
        this.branchs = response.data;
      }).catch((error) => {
        console.log(error)
        this.errMessage = 'error retrieving data'
      })
    },

    searchbyBranch(branchId){
      let formData = new FormData();
      formData.append('name', this.namebranch);
      axios.post(`http://127.0.0.1:8000/api/searchByBranch/${branchId}`,this.searchby,{
      headers: {
                        Authorization: `Bearer ${this.tokenA}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }}
      
      )
        .then((response) => {
          console.log(response.data + "dnhb ")
          this.result = response.data
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    },

 getsearchResultss() {
  clearTimeout.value(this.queryTimeout.value);
this.queryTimeout.value=setTimeout(async ()=>{
  if(this.searchQuery.value!==""){
try{
  const result=await axios.get(
      `http://127.0.0.1:8000/api/searchByBranch/${this.searchQuery.value}`
    );
    this.mapboxSearchResult.value=(await result).data.features;
    console(this.mapboxSearchResult.value)
}catch{
this.searchError.value=true;
}
    return;
  }
  this.mapboxSearchResult.value=null;
},300);
},


getsearchResults() {
      axios.post('http://127.0.0.1:8000/api/searchbyName',this.searchQuery,{
      headers: {
                        Authorization: `Bearer ${this.tokenA}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }}
      
      )
        .then((response) => {
          console.log(response[0].data+ "dnhb ")
          this.result = response.data[0]
          console.log(this.result)
        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })
    },
   
  }
}
</script>
<style>.spinner {
  border-top-color: transparent !important;
  border-right-color: transparent !important;
  border-bottom-color: transparent !important;
}

.relative {
  width: 100%;
  height: 0;
  padding-bottom: 10.67%;

}</style>
