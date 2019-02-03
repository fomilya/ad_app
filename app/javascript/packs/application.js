import Vue from '../../../node_modules/vue/dist/vue.esm.js'
import Multiselect from 'vue-multiselect'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  let element = document.getElementById("app")
  let opt = element.dataset
  console.log(opt.options)
  console.log(opt.value);
  new Vue({
    el: '#app',
    data: {
      options: opt.options,
      value: opt.value
    },
    render: h => h(App)

  })
})
