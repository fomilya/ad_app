import Vue from 'vue'
import App from '../app.vue'

document.addEventListener('DOMContentLoaded', () => {
  const el = '#app'
  const app = new Vue({
    el,
    render: h => h(App)
  })

  console.log(app)
})
