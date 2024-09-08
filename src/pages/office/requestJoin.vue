<template>
  <!-- <NavBar></NavBar> -->
  <div>
    <div class="flex items-center justify-center h-full px-6 bg-gray-200">
      <div class="w-full max-w-mx p-1 m-60 mt-20 bg-blue-950 bg-opacity-20 rounded-md shadow-md">
        <div class="flex items-center justify-center">
          <div class=" grid grid-cols-1 gap-x-40 gap-y-8 sm:grid-cols-6 pt-10">


            <div class="sm:col-span-3">
              <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">name</label>
              <div class="mt-2 relative">

                <!-- <div class="relative">
    <input type="text" v-model="searchTerm" class="pl-3 pr-10 py-2 rounded-full border border-gray-300 focus:outline-none focus:border-indigo-500">
    <i class="fa fa-search absolute inset-y-0 right-0 pr-3 pt-2"></i>
  </div> -->

                <input type="text" name="first-name" id="first-name" v-model="name" placeholder="name your office"
                  autocomplete="given-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
              <i class="fa-solid fa-pen absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
            </div>
            </div>

            <div class="sm:col-span-3 ">

              <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">email</label>
              <div class="mt-2 relative">
                <input type="text" name="last-name" id="last-name" v-model="email" placeholder="email"
                  autocomplete="family-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-envelope absolute inset-y-0  right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>

            <div class="sm:col-span-3 ">
              <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">password</label>
              <div class="mt-2 relative">
                <input type="text" name="first-name" id="first-name" v-model="password" placeholder="password"
                  autocomplete="given-name"
                  class="block w-full p-2 rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-lock absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>



            <div class="sm:col-span-3 ">
              <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">Location</label>
              <div class="mt-2 relative">
                <input type="text" name="last-name" id="last-name" v-model="location" placeholder="location"
                  autocomplete="family-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-location-dot absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>

            <div class="sm:col-span-3 ">
              <label for="first-name" class="block text-sm font-medium leading-6 text-gray-900">phoneOne</label>
              <div class="mt-2 relative">
                <input type="text" name="first-name" id="first-name" v-model="phoneOne" placeholder="phone1"
                  autocomplete="given-name"
                  class="block w-full p-2 rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-phone absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>


            <div class="sm:col-span-3 ">
              <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">phoneTwo</label>
              <div class="mt-2 relative">
                <input type="text" name="last-name" id="last-name" v-model="phoneTwo" placeholder="phone2"
                  autocomplete="family-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-phone absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>


            <div class="sm:col-span-3">
              <label class="block text-sm font-medium leading-6 text-gray-900">stars</label>
              <div class="mt-2">
                <select id="country" name="country" v-model="star_id" placeholder="stars" autocomplete="country-name"
                  class="block w-full rounded-md border-0 py-3.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <option v-for="star in stars" :key="star.id" :value="star.id" >{{ star.name }}
                    <!-- <p>{{ star.name }}</p> -->
                  </option>
                  <p>The selected fruit IDs are {{ selectedstarId }}.</p>
                </select>
              </div>
            </div>

            <div class="sm:col-span-3 ">
              <label for="country" class="block text-sm font-medium leading-6 text-gray-900">type</label>
              <div class="mt-2">
                <select id="country" name="country" v-model="type" autocomplete="country-name"
                  class="block w-full rounded-md border-0 py-3.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <option>United States</option>
                  <option>Canada</option>
                  <option>Mexico</option>
                </select>
              </div>
            </div>

            <div class="sm:col-span-3 ">
              <label for="country" class="block text-sm font-medium leading-6 text-gray-900">City</label>
              <div class="mt-2">
                <select id="country" name="country" v-model="id_gov" placeholder="id_gov" autocomplete="country-name"
                  class="block w-full rounded-md border-0 py-3.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <option v-for="city in allcity" :key="city.id" :value="city.id">{{ city.name }}</option>
                </select>
              </div>
            </div>

            <div class="sm:col-span-3 ">
              <label for="country" class="block text-sm font-medium leading-6 text-gray-900">branch</label>
              <div class="mt-2">
                <select id="country" name="country" v-model="branch_id" placeholder="branch_id"
                  autocomplete="country-name"
                  class="block w-full rounded-md border-0 py-3.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <option v-for="branch in branchs" :key="branch.id" :value="branch.id">{{ branch.name }}</option>
                </select>
              </div>
            </div>

            <div class="sm:col-span-3">
              <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">amount</label>
              <div class="mt-2 relative">
                <input type="text" name="last-name" id="last-name" v-model="amount" placeholder="amount"
                  autocomplete="family-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-dollar absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>
            <!--         
      here must be codingتشفير الكود -->
            <div class="sm:col-span-3 ">
              <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">code</label>
              <div class="mt-2 relative">
                <input type="text" name="last-name" id="last-name" v-model="code" placeholder="number of card"
                  autocomplete="family-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-wallet absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>

            <div class="sm:col-span-3 ">
              <label for="last-name" class="block text-sm font-medium leading-6 text-gray-900">percent</label>
              <div class="mt-2 relative">
                <input type="text" name="last-name" id="last-name" v-model="percent" placeholder="number of card"
                  autocomplete="family-name"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
                  <i class="fa-solid fa-chart-pie absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i>
                </div>
            </div>
            <div class="sm:col-span-3 "></div>

            <div class="col-span-full">
              <label for="about" class="block text-sm font-medium leading-6 text-gray-900">discreption</label>
              <div class="mt-2">
                <textarea id="about" v-model="discreption" placeholder="discreption" name="about" rows="3"
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"></textarea>
              </div>
              <!-- <p class="mt-3 text-sm leading-6 text-gray-600">Write a few sentences about yourself.</p> -->
            </div>



            <div class="sm:col-span-3 ">
              <label for="about" class="block text-sm font-medium leading-6 text-gray-900">image your office</label>
              <div class="flex space-x-4 items-center">
                <input
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                  type="file" @change="onFileSelected(1)">
              </div>
              


              <!-- <input type="file" ref="fileInput" @input="pickFile" @change="onFileChange" placeholder="image your office"
                :v-model="image" name="first-name" id="first-name" autocomplete="given-name"
                class="block p-2 w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="orange" class="w-6 h-6">
                <path d="M12 9a3.75 3.75 0 100 7.5A3.75 3.75 0 0012 9z" />
                <path fill-rule="evenodd"
                  d="M9.344 3.071a49.52 49.52 0 015.312 0c.967.052 1.83.585 2.332 1.39l.821 1.317c.24.383.645.643 1.11.71.386.054.77.113 1.152.177 1.432.239 2.429 1.493 2.429 2.909V18a3 3 0 01-3 3h-15a3 3 0 01-3-3V9.574c0-1.416.997-2.67 2.429-2.909.382-.064.766-.123 1.151-.178a1.56 1.56 0 001.11-.71l.822-1.315a2.942 2.942 0 012.332-1.39zM6.75 12.75a5.25 5.25 0 1110.5 0 5.25 5.25 0 01-10.5 0zm12-1.5a.75.75 0 100-1.5.75.75 0 000 1.5z"
                  clip-rule="evenodd" />
              </svg> -->

              <!-- <div class="border-2 rounded-lg   border-gray-200 w-80 h-40px"
          :style="{ 'background-image': `url(${officeImage})` }" @click="selectImage">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="orange" class="w-6 h-6">
            <path d="M12 9a3.75 3.75 0 100 7.5A3.75 3.75 0 0012 9z" />
            <path fill-rule="evenodd"
              d="M9.344 3.071a49.52 49.52 0 015.312 0c.967.052 1.83.585 2.332 1.39l.821 1.317c.24.383.645.643 1.11.71.386.054.77.113 1.152.177 1.432.239 2.429 1.493 2.429 2.909V18a3 3 0 01-3 3h-15a3 3 0 01-3-3V9.574c0-1.416.997-2.67 2.429-2.909.382-.064.766-.123 1.151-.178a1.56 1.56 0 001.11-.71l.822-1.315a2.942 2.942 0 012.332-1.39zM6.75 12.75a5.25 5.25 0 1110.5 0 5.25 5.25 0 01-10.5 0zm12-1.5a.75.75 0 100-1.5.75.75 0 000 1.5z"
              clip-rule="evenodd" />
          </svg>
          <p class="p-10">add contract of office</p>
          <input type="file" ref="fileInput" @input="pickFile" @change="onFileChange" placeholder="image your office"
            :v-model="image">
        </div> -->
            </div>



            <div class="sm:col-span-3 ">
              <label for="about" class="block text-sm font-medium leading-6 text-gray-900">Image prmit</label>
              <div class="flex space-x-4 items-center ">
                <input
                  class="block p-2 w-full rounded-md border-0 py-3 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6"
                  type="file" @change="onFileSelected(2)">
                  <!-- <i class="fa-solid fa-camera-retro absolute inset-y-0 right-0 pr-3 text-orange-700 pt-2"></i> -->
                </div>
            </div>
          </div>

          <!-- <div class="border-2 rounded-lg   border-gray-200 w-80 h-40px"
                :style="{ 'background-image': `url(${officeImage})` }" @click="selectImage">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="orange" class="w-6 h-6">
                  <path d="M12 9a3.75 3.75 0 100 7.5A3.75 3.75 0 0012 9z" />
                  <path fill-rule="evenodd"
                    d="M9.344 3.071a49.52 49.52 0 015.312 0c.967.052 1.83.585 2.332 1.39l.821 1.317c.24.383.645.643 1.11.71.386.054.77.113 1.152.177 1.432.239 2.429 1.493 2.429 2.909V18a3 3 0 01-3 3h-15a3 3 0 01-3-3V9.574c0-1.416.997-2.67 2.429-2.909.382-.064.766-.123 1.151-.178a1.56 1.56 0 001.11-.71l.822-1.315a2.942 2.942 0 012.332-1.39zM6.75 12.75a5.25 5.25 0 1110.5 0 5.25 5.25 0 01-10.5 0zm12-1.5a.75.75 0 100-1.5.75.75 0 000 1.5z"
                    clip-rule="evenodd" />
                </svg>
                <p class="p-10">add contract of office</p>
                <input type="file" ref="fileInput" @input="pickFile" @change="onFileChange"
                  placeholder="image your office" :v-model="contract">
              </div>
            </div> -->
        </div>
        <div class="sm:col-span-2 "></div>

        <div class="sm:col-span-2 mt-10">
          
          <button class="border-2 rounded-lg pl-2 pt-1 border-gray-200  w-40 h-10text-white bg-orange-600 rounded-md focus:outline-none hover:bg-blue-900"
            type="submit" @click="addOffice">
            Add the office
          </button>
          <!-- </router-link> -->
        </div>

        <div class="sm:col-span-2 "></div>


        <!-- </div> -->
      </div>
    </div>
  </div>
</template>

<script>
// import NavBar from '@/components/NavBar.vue';
// import toolTip from '@/components/toolTip.vue';
import axios from 'axios'
export default {
  components: {
    // NavBar,
    // toolTip
  },
  data() {
    return {
      stars: [],
      branchs: [],
      allcity: [],
      selectedStar:null,
      selectedGov:null,
      selectedBranch:null,
      file1: null,
      file2: null,
      officeImage: '0',
      error: '',
      name: '',
      percent:'',
      id_gov: null,
      branch_id: null,
      type_id: null,
      star_id: null,
      location: null,
      discreption: '',
      phoneOne: '',
      phoneTwo: '',
      image: '',
      code: null,
      amount: null,
      email: '',
      password: '',
      status: true,
      contract: '',



      // imagePick:false
    }
  },

  computed: {
    // selectedstarId() {
    //   const selectedstar = this.star.find(star => star.name === this.selectedStar);
    //   return selectedstar ? selectedstar.id : null;
    // },
  },

  mounted() {
    setTimeout(() => {
      this.loading = false;
    }, 2000);
    this.getAllStars();
    this.getAllBranch();
    this.getAllcity();

  },
  methods: {
    onFileSelected(field) {
      const input = event.target;
      const file = input.files[0];
      if (field === 1) {
        this.file1 = file;
      } else {
        this.file2 = file;
      }
    },

    // uploadImage(field) {
    //   const formData = new FormData();
    //   if (field === 1) {
    //     formData.append('image', this.file1);
    //   } else {
    //     formData.append('image', this.file2);
    //   }
    //   // Send formData to your server using Axios or another HTTP library
    // },


    // selectImage() {
    //   this.$refs.fileInput.click()
    // },
    // onFileChange(event) {
    //   this.image = event.target.files[0];
    // },

    // pickFile() {
    //   let input = this.$refs.fileInput
    //   let file = input.files
    //   if (file && file[0]) {
    //     let reader = new FileReader
    //     reader.onload = e => {
    //       this.officeImage = e.target.result
    //     }
    //     reader.readAsDataURL(file[0])
    //     this.$emit('input', file[0])
    //   }
    // },
    addOffice() {
      let formData = new FormData();
      formData.append('name', this.name);
      formData.append('id_gov',this.id_gov);
      formData.append('branch_id', this.branch_id);
      formData.append('type_id', 2);
      formData.append('star_id', this.star_id);
      formData.append('location', this.location);
      formData.append('discreption', this.discreption);
      formData.append('phoneOne', this.phoneOne);
      formData.append('phoneTwo', this.phoneTwo);
      formData.append('code', this.code);
      formData.append('amount', this.amount);
      formData.append('email', this.email);
      formData.append('password', this.password);
      formData.append('status', this.status);
      formData.append('contract', this.file2);
      formData.append('image', this.file1);
      formData.append('percent',this.percent)

      axios.post('http://127.0.0.1:8000/api/requestJoin', formData)
        .then(response => {
          console.log(response + "lknkj")
          // handle successful response from server
        })
        .catch(error => {
          console.log(error)
          // handle error response from server
        });
    },

    getAllStars() {
      axios.get('http://127.0.0.1:8000/api/showstars').then((response) => {
        this.stars = response.data;
      }).catch((error) => {
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
    getAllcity() {
      axios.get('http://127.0.0.1:8000/api/showGoverment').then((response) => {
        this.allcity = response.data;
      }).catch((error) => {
        console.log(error)
        this.errMessage = 'error retrieving data'
      })
    },
  },
};
</script>

<style>
</style>