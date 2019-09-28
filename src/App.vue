<template>
  <div id="app">
    <Startseite msg="Hallo Leute!"/>
    <ul>
    <ListItem/>
    </ul>
  </div>
</template>

<script>
import ListItem from './components/ListItem.vue'
import Startseite from './components/Startseite.vue'

export default {
  name: 'app',
  components: {
    ListItem,
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
