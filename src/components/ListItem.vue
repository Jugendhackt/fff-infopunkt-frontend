<template>
<div class="event">
    <div class="header">
        <div class="Datum">{{ date }}</div>
        <p class="source">Quelle: {{ quelle }}</p>
    </div>
    <h2><a class="Gruppenname" :href="orgurl">{{ org }}</a> {{ titel }}</h2>
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
    org: String,
    orgurl: String,
    treffpunkt: String,
    time: String,
    ziel: String,
    strecke: String,
    titel: String,
    beschreibung: String,
    quelle: String
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
        padding: 2px;
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
    div.header * {
        display: inline-block;
    }
    p {
        margin: 0;
    }
    p.source {
        color: #555;
        font-size: 10pt;
        margin-left: 40px;
    }
    .Datum {
        font-weight:bold;
        color:black
    }
    .Gruppenname {
        color: #45d94d;
	text-decoration: none;
        font-size: 20pt;
    }
    .Gruppenname:hover {
	text-decoration: underline;
    }
    strong {
        text-align: left
    }
    h2 {
        margin: 0.1em 0;
    }
</style>
