<template>
    <div>
      <button
        type="button"
        class="mb-2 md:mb-0 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
        @mouseover="showTooltip = true"
        @mouseout="showTooltip = false"
      >
        Tooltip bottom
      </button>
      <div
        v-show="showTooltip"
        id="tooltip-bottom"
        role="tooltip"
        class="absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700"
        data-popper-placement="bottom"
        ref="tooltip"
      >
        Tooltip on bottom
        <div class="tooltip-arrow" data-popper-arrow></div>
      </div>
    </div>
  </template>
  
  <script>
  import Popper from 'popper.js';
  export default {
    data() {
      return {
        showTooltip: false,
      };
    },
    mounted() {
      this.$nextTick(() => {
        const tooltip = this.$refs.tooltip;
        this.popper = new Popper(this.$el, tooltip, {
          placement: 'bottom',
          modifiers: {
            preventOverflow: {
              enabled: true,
              boundariesElement: 'viewport',
            },
            flip: {
              enabled: true,
            },
          },
        });
      });
    },
    beforeUnmount() {
        this.popper.destroy();
    // code to run before the component is unmounted
  }
    // beforeDestroy() {
     
    // },
  };
  </script>