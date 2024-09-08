<template>
    <div>

<p class="text-black"> {{ fname }} </p>
    </div>
</template>

<script>
import axios from 'axios'
export default {
data(){
return{
    trip:null,
    fname:'',
    lname:'',
    nameof:'',
    token :localStorage.getItem('token'),
}
},
mounted(){
    const tripId = this.$route.params.TripId
    this.fetchDataItem(tripId)
},
methods:{
    fetchDataItem(tripId){
        axios.get(`http://127.0.0.1:8000/api/getIdExternalTravel/${tripId}`,{
                    headers: {
                        'Authorization': `Bearer ${this.token}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                })
        .then((response) => {
          console.log(response.data.color+"      " + "dnhb ")
          // console.log(response.data[0].name+"      " + "dnhb ")
          this.trip =response.data.travel[0];
          this.fname=response.data.firstName;
          this.lname=response.data.Last_Name;
          this.nameof=response.data.name_office;
          console.log(this.trip+"      " + "dnhb ")
        //   this.drivers=response.data[0].driver
        //   this.cars=response.data[0].car

          // this.office = response.office
          // this.drivers=response.office.driver
          // this.cars=response.office.car

        })
        .catch((error) => {
          console.log(error)
          this.errMessage = 'error retrieving data'
        })

    }
},
}
</script>
