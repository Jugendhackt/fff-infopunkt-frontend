<template>
  <div id="app">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
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
  font-family: Roboto, Arial, sans-serif;
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
