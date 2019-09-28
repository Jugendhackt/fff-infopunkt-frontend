<template>
  <div class="hello">
      <div class="head">
        <h1>Politischer Infopoint</h1>
        <h2>Finde Demos &amp; Aktionen in deiner Nähe!</h2>
      </div>
      <div class="color">
        <img src="../assets/Bild_Demo.jpg" alt="eine demo von fridays for future"/>
      </div>
      <ul>
        <div v-for="item in items">
          <ListItem :date="item.date" :event="item.organisation" :treffpunkt="item.meetingPoint" :ziel="item.endPoint" :time="item.startTime" :strecke="item.routeLength" :titel="item.title"/>
        </div>
      </ul>
  </div>
</template>

<script>
import axios from 'axios'
import ListItem from './ListItem.vue'


function fetchData(con) {
  axios
    .get('https://api.fffinfo.de/strikes/all')
    .then(response => {
        con.items = response.data.items
        console.log(JSON.stringify(response.data.items[0]))
        console.log(JSON.stringify(response))
    })
}

export default {
  name: 'Startseite',
  data() {return {
      items: [
          {"datetime":"Datum und Uhrzeit","meetingPoint":"Startpunkt / Treffpunkt","searchTitle":"titel","routeLength":"Routenlänge","longitude":0,"source":"Telegram chat group, collected bei FFF_Info Bot","description":"Beschreibung","url":"Website Veranstalter","latitude":0,"strikeId":3,"endPoint":"Endpunkt","title":"Titel"}]
  }},
  created () {
      fetchData(this)
      setInterval(() => {
          fetchData(this)
      }, 10000, 0)
  },
  components: {
    ListItem
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
div.head, div.color {
	height: 180px;
}
div.head {
	margin-bottom: 40px;
	padding: 0 15px;
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
</style>
