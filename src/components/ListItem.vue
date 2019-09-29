<template>
<div class="event">
    <div class="Datum">{{ date }}</div>
    <h2><span class="Gruppenname">{{ event }}</span> {{ titel }}</h2>
    <ul>
        <li> <strong>Treffpunkt:</strong> {{ treffpunkt }}</li>
        <li> <strong>Start:</strong> {{ time }}</li>
        <li v-if="ziel && ziel.trim()"> <strong>Ziel:</strong> {{ ziel }}</li>
        <li v-if="strecke && strecke.trim()"><strong>Routenlänge:</strong> {{ strecke }}</li>
	<li><a v-if="!show" v-on:click="loadinfo()">weitere Infos...</a></li>
    </ul>
    <p v-if="show">{{ beschreibung }}</p>
</div>
</template>


<script>
export default {
  name: 'ListItem',
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
    a {
        color: blue;
        cursor: pointer;
    }
    ul {
        padding-left: 0px;
        list-style-type: none;
    }
    li {
        background-color: white;
        padding: 5px;
		padding-left: 0px;
    }
    div.event {
	margin-bottom: 35px;
	margin-left: 100px;
    }
    @media screen and (max-width: 715px) {
	div.event {
	    margin-left: 8%;
	}
    }
    p {
        margin: 0;
    }
    .Datum {
        font-weight:bold;
        color:black
    }
    .Gruppenname {
        color: #45d94d;
        font-size: 20pt;
    }
    strong {
        text-align: left
    }
    h2 {
        margin: 0.1em 0;
    }
</style>
