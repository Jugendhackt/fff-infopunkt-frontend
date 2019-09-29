<template>
<li class="event">
    <div class="Datum">{{ date }}</div>
    <h2><span class="Gruppenname">{{ event }}</span> {{ titel }}</h2>
    <ul>
        <li> <strong>Treffpunkt:</strong> {{ treffpunkt }}</li>
        <li> <strong>Start:</strong> {{ time }}</li>
        <li v-if="ziel && ziel.trim()"> <strong>Ziel:</strong> {{ ziel }}</li>
        <li v-if="strecke && strecke.trim()"><strong>Routenlänge:</strong> {{ strecke }}</li>
	<li><a>weitere Infos...</a></li>
    </ul>
</li>
    
</template>


<script>
export default {
  name: 'ListItem',
  props: {
    date: String,
    event: String,
    treffpunkt: String,
    time: String,
    ziel: String,
    strecke: String,
    titel: String
  }
}
</script>


<style>
    ul {
        padding-left: 0px;
        list-style-type: none;
    }
    li {
        background-color: white;
        padding: 5px;
		padding-left: 0px;
    }
    li.event {
		margin-bottom: 35px;
		margin-left: 100px;
	}
	@media screen and (max-width: 715px) {
		li.event {
			margin-left: 8%;
		}
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
