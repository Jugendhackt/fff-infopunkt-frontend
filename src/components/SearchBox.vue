<template>
<div class="inline">
	<input type="text" v-model="searchterm" placeholder="Stadt"> </input>
	<button>🔍</button>
</div>
</template>


<script>
export default {
  name: 'SearchBox',
  data() { return {
    show: false
  }},
  methods: {
    loadinfo: function() {
      this.show = true;
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
}

input:focus, button:focus {
    outline: none;
}
</style>
