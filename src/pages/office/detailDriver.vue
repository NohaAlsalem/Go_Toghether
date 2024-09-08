<template>
    <div>
<p>{{ driver?.id }}</p>
    </div>
</template>

<script>
import axios from 'axios'
export default{
    data(){
return{
    driver:null,
    token :localStorage.getItem('token'),
}
    },
    mounted(){
        const driverId = this.$route.params.DriverId
        this.fetchDataItem(driverId)
    },
    methods:{
        fetchDataItem(driverId){
        axios.get(`http://127.0.0.1:8000/api/showonedriver/${driverId}`,{
                    headers: {
                        'Authorization': `Bearer ${this.token}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                })
        .then((response) => {
          console.log(response.data.id+"      " + "dnhb ")
          // console.log(response.data[0].name+"      " + "dnhb ")
          this.driver = response.data
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
}
}
</script>
