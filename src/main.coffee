Vue = require "vue"
vueMain = require "./components/main.vue"

app = module.exports = new Vue {
  el: '#app',
  components: {
    "vue-main": vueMain
  },
  data: {
    items: [
      {message: "hello"},
      {message: "world"}
    ]
  }
}
