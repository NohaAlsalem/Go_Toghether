<template>
    <div>

<p class="text-black"> {{ car?.id }} </p>
    </div>
</template>

<script>
import axios from 'axios'
export default {
data(){
return{
    car:null,
    token :localStorage.getItem('token'),
}
},
mounted(){
    const carId = this.$route.params.CarId
    this.fetchDataItem(carId)
},
methods:{
    fetchDataItem(CarId){
        axios.get(`http://127.0.0.1:8000/api/getIdCar/${CarId}`,{
                    headers: {
                        'Authorization': `Bearer ${this.token}`,
                        // 'Authorization': `Bearer ${this.tokenA}`
                    }
                })
        .then((response) => {
          console.log(response.data.color+"      " + "dnhb ")
          // console.log(response.data[0].name+"      " + "dnhb ")
          this.car =response.data.car[0]
          console.log(this.car.id+"      " + "dnhb ")
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
