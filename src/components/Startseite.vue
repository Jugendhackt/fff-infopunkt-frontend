<template>
  <div class="hello">
      <link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">
      <div class="head">
        <h1>Politischer Infopoint</h1>
      </div>
      <h2>Finde Demos &amp; Aktionen in deiner Nähe!</h2>
      <div class="color">
        <img src="../assets/Bild_Demo.jpg" alt="eine demo von fridays for future"/>
      </div>
      <ul>
        <div v-for="item in items">
          <ListItem :datetime="item.datetime" :event="item.title" :treffpunkt="item.meetingPoint" :ziel="item.endPoint" :strecke="item.routeLength"/>
        </div>
      </ul>
  </div>
</template>

<script>
import axios from 'axios'
import ListItem from './ListItem.vue'
export default {
  name: 'Startseite',
  data() {return {
      items: [{"datetime":"Datum und Uhrzeit","meetingPoint":"Startpunkt / Treffpunkt","searchTitle":"titel","routeLength":"Routenlänge","longitude":0,"source":"Telegram chat group, collected bei FFF_Info Bot","description":"Beschreibung","url":"Website Veranstalter","latitude":0,"strikeId":3,"endPoint":"Endpunkt","title":"Titel"}]
  }},
  created () {
    axios
      .get('https://api.fffinfo.de/strikes/all')
      .then(response => {
          this.items = response.data.items
          console.log(JSON.stringify(response.data.items[0]))
      })
  },
  components: {
    ListItem
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
div.head {
    height: 80px;
}
img {
    width: 100%;
    height: auto;
    opacity: 0.8;
    position: absolute;
    top: 80px;
    z-index: -1;
}
h1, h2 {
    text-align: center;
    font-family: "PT Serif", serif;
}
h1 {
    line-height: 80px;
    margin: 0;
}
h2 {
    margin-top: 150px;
    width: 100%;
    z-index: 1;
}
div.color, div.head {
    background: #45d94d;
}
</style>
