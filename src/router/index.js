
import { createRouter, createWebHistory } from "vue-router";
import signin from '../pages/master/signin';
import home from '../pages/master/home';
import addoffice from '../pages/master/addoffice';
import requestsoffice from '../pages/master/requestsoffice';
import detailsoffice from '../pages/master/detailsoffice';
import alloffice from '../pages/master/alloffice';



// import homeOf from '../pages/office/homeOf';
import addCars from '../pages/office/addCars';
import excutedTrip from '../pages/office/excutedTrip';
import loginOf from '../pages/office/loginOf';
import myCars from '../pages/office/myCars';
import myDrivers from '../pages/office/myDrivers';
import todoTrip from '../pages/office/todoTrip';
import requestJoin from '../pages/office/requestJoin';
import requestsDriver from '../pages/office/requestsDriver';
import homeOffice from '../pages/office/homeOffice';
import addTrip from '../pages/office/addTrip';
import detailDriver from '../pages/office/detailDriver';
import detailCar from '../pages/office/detailCar';
import detailTrip from '../pages/office/detailTrip';
import addReward from '../pages/office/addReward';
import addOffer from '../pages/office/addOffer';
import allOffer from '../pages/office/allOffer';
import BasePage from '../pages/BasePage';



const routes = [

    {
        name:'base',
        path:'/ll',
        component:BasePage,
    },
    

    {
        name:'loginOf',
        path:'/',
        // /signinOffice
        component:loginOf,
    },
    {
        name:'homeOffice',
        path:'/homeO',
        // homeO
        component:homeOffice,
    },
    {
        name:'addCars',
        path:'/addCar',
        component:addCars,
    },
    {
        name:'excutedTrip',
        path:'/excutedtrip',
        component:excutedTrip,
    },
    {
        name:'myCars',
        path:'/mycar',
        component:myCars,
    },
    {
        name:'myDrivers',
        path:'/mydriver',
        component:myDrivers,
    },
    {
        name:'todoTrip',
        path:'/todotrip',
        component:todoTrip,
    },
    {
        name:'requestsDriver',
        path:'/requestsdriver',
        component:requestsDriver,
    },
    {
        name:'requestJoin',
        path:'/requestJoin',
        component:requestJoin,
    },
    {
        name:'addtrip',
        path:'/addtrip',
        component:addTrip,
    },
    
   
    {
        path: '/drivers/:DriverId',
        name: 'detaildriver',
        component: detailDriver,
        props: true
      },

      {
        path: '/cars/:CarId',
        name: 'detailCar',
        component: detailCar,
        props: true
      },
      {
        path: '/trips/:TripId',
        name: 'detailtrip',
        component: detailTrip,
        props: true
      },
      {
        path: '/addReward',
        name: 'addReward',
        component: addReward,
      },
      {
        path: '/addOffer',
        name: 'addOffer',
        component:addOffer,
      },
      {
        name:'allOffer',
        path:'/allOffer',
        component:allOffer,
    },





    {
        name:'SignIn',
        path:'/signinAdmin',
        component:signin,
    },
  
{
    name:'Home',
    path:'/HOME',
    //HOME
    component:home,
},
{
    name:'AddOffice',
    path:'/add',
    component:addoffice,
},
{
    name:'Request',
    path:'/request',
    component:requestsoffice,
},

    {
      path: '/offices/:officeId',
      name: 'detailsoffice',
      component: detailsoffice,
      props: true
    },
{
    name:'allofffice',
    path:'/alloffice',
    component:alloffice,
}
];
const router=Router();
router.push('/login');
export default router;
function Router() {
    const router=new createRouter({
        history:createWebHistory(),
        routes,
    });
   

// export default router;
    return router;
}