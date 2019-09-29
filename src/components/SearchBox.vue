<template>
<form class="inline" v-on:submit.prevent="submit">
	<input type="text" v-model="searchterm" placeholder="Stadt"/>
	<button>🔍</button>
</form>
</template>


<script>
export default {
  name: 'SearchBox',
  data() { return {
    show: false,
    searchterm: ''
  }},
  methods: {
    loadinfo: function() {
      this.show = true;
    },
    submit: function() {
      console.debug("search: " + this.searchterm)
    }
  },
  props: {
    date: String,
    event: String,
    treffpunkt: String,
    time: String,
    ziel: String,
    strecke: String,
    titel: String,
    beschreibung: String
  }
}
</script>


<style scoped>
.inline * {
    display: inline-block;
    max-height: 55px;
}
.inline {
    margin: 1.8em auto 1.2em auto;
    display: flex;
    justify-content: center;
    width: 70%;
    max-width: 300px;
}
button {
    background: white;
    border-radius: 0px 8px 8px 0px;
    border: none;
    cursor: pointer;
    font-size: 22pt;
    vertical-align: center;
    line-height: 1.8em;
}
input {
    font-size: 18pt;
    padding: 4px 12px;
    border-radius: 8px 0px 0px 8px;
    border: none;
    min-width: 340px;
}
@media screen and (max-width: 440px) {
    .inline {
	max-width: 260px;
    }
    input {
        min-width: 180px;
    }
}
input:focus, button:focus {
    outline: none;
}
</style>
