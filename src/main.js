import { createApp } from 'vue'
import App from './App.vue'
import '@fortawesome/fontawesome-free/css/all.css'
import '@fortawesome/fontawesome-free/js/all.js'
import VueTailwindDatepicker from 'vue-tailwind-datepicker'


//import css
import './assets/css/app.css'
//import router
import router from './router'

const app=createApp(App)

app.use(VueTailwindDatepicker)
app.use(router)
app.mount('#app')


// import Vue from 'vue'
// import Vuetify from 'vuetify'
// import 'vuetify/dist/vuetify.min.css'

// Vue.use(Vuetify)

// new Vue({
//   vuetify: new Vuetify(),
//   // ...
// }).$mount('#app')




// import VueResource from 'vue-resource'
// VueResource.use(VueResource)

