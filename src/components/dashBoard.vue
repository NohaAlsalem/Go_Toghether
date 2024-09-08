<template>
  <div class="leading-normal tracking-normal" id="main-body">
    <div class="flex flex-wrap">

      <sideBar />

      <div class="w-full bg-gray-100 pl-0 lg:pl-64 min-h-screen" :class="sideBarOpen ? 'overlay' : ''" id="main-content">

        <NavBar />

        <div class="p-6 bg-gray-100 mb-20">
          <router-view />
        </div>

        <FooTer />

      </div>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex'

import sideBar from './sideBar'
import NavBar from './NavBar'
import FooTer from './FooTer'

export default {
  name: 'DashBoard',
  computed: {
    ...mapState(['sideBarOpen'])
  },
  components: {
    sideBar,
   NavBar,
    FooTer
  }
}
</script>