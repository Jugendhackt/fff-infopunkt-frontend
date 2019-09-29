<template>
  <div id="app">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
    <button v-on:click="menuAction">Menu</button>
    <Startseite/>
  </div>
</template>

<script>
import Startseite from './components/Startseite.vue'

export default {
  name: 'app',
  components: {
    Startseite
  },
  methods: {
    menuAction: function() {
      alert("Über uns:\n\nWir sind eine Gruppe von 'JugendHackt', die es sich zur Aufgabe gemacht hat, Schülern von überall her FFF-Demos in ihrer Nähe anzuzeigen. Dadurch kann sich jeder bei Interesse beteiligen!")
    }
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
