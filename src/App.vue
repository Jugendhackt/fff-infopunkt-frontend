<template>
  <div id="app">
    <Startseite/>
  </div>
</template>

<script>
import Startseite from './components/Startseite.vue'

export default {
  name: 'app',
  components: {
    Startseite
  }
}
</script>

<style>
body {
  margin: 0;
}
/*#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}*/
</style>
