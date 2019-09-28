<template>
  <div id="app">
    <ul>
    <ListItem/>
    </ul>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import ListItem from './components/ListItem.vue'

export default {
  name: 'app',
  components: {
    HelloWorld,
    ListItem
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
