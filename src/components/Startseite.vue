<template>
  <div class="hello">
      <div class="head">
        <h1><img class="logo" src="../assets/logo.png">Politischer Infopoint</h1>
        <h2>Finde Demos &amp; Aktionen in deiner Nähe!</h2>
		<SearchBox v-on:searched="searched = true"/>
      </div>
      <ul>
        <div v-if="searched" v-for="item in items">
          <ListItem :date="item.date" :event="item.organisation" :treffpunkt="item.meetingPoint" :ziel="item.endPoint" :time="item.startTime" :strecke="item.routeLength" :titel="item.title" :beschreibung="item.description"/>
        </div>
      </ul>
  </div>
</template>

<script>
import axios from 'axios'
import ListItem from './ListItem.vue'
import SearchBox from './SearchBox.vue'

export default {
  name: 'Startseite',
  data() {return {
      items: [
          {"datetime":"Datum und Uhrzeit","meetingPoint":"Startpunkt / Treffpunkt","searchTitle":"titel","routeLength":"Routenlänge","longitude":0,"source":"Telegram chat group, collected bei FFF_Info Bot","description":"Beschreibung","url":"Website Veranstalter","latitude":0,"strikeId":3,"endPoint":"Endpunkt","title":"Titel"}],
	  searched: false
  }},
  created () {
    this.fetchData()
    setInterval(() => {
        this.fetchData()
    }, 4000, 0)
	},
  methods: {
	 fetchData: function() {
     axios
      .get('https://api.fffinfo.de/strikes/all')
      .then(response => {
          this.items = response.data.items
          console.debug("fetched data: " + JSON.stringify(this.items))
		  console.debug(this.items)
      })
    }
  },
  components: {
    ListItem,
	SearchBox
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
div.head {
	margin-bottom: 40px;
	padding: 0 15px 1em 15px;
	background-size: cover;
	background-image: url('../assets/Bild_Demo.jpg');
}
h1, h2 {
    text-align: center;
}
h1 {
	font-size: 3em;
    margin: 0;
	padding-top: 50px;
}
h2 {
	font-weight: normal;
    margin: 0;
	margin-top: 8px;
}
@media screen and (max-width: 485px) {
	h1 {
		font-size: 2em;
	}
	h2 {
		margin-top: 13px;
	}
}
div.color {
    overflow: hidden;
    top: 0px;
	position: absolute;
    z-index: -1;
}
img {
    width: 100%;
    height: auto;
    opacity: 0.8;
}
.logo {
  height: 1.2em;
  width: auto;
  opacity: 1;
  margin-bottom: -0.2em;
  margin-right: 0.1em;
}
</style>
