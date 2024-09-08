const { Container } = require('postcss');

/** @type {import('tailwindcss').Config} */
module.exports = {
  content:[
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
    // "./node_modules/vue-tailwind-datepicker/**/*.js"
  ],
  theme: {
    extend: {
      colors:{
        "go-primery":"#1B3358",
        "go-secondary":"#F97316"
      }
    },
    fontFamily:{
      Roboto:["Roboto,sans-serif"],
    },
    container:{
      Padding:"2erm",
      center:true,
    },
    screens:{
      sm:"640px",
      md:"768px",
    },
  },
  plugins: [
  ],
}

