<template>
<li>
    <div class="Datum">{{ datetime }}</div>
    <h2><span class="Gruppenname">{{ event }}</span>Demo</h2>
    <ul>
        <li> <strong>Treffpunkt: </strong>{{ treffpunkt }}</li>
        <li> <strong>Start: </strong>{{ start }}</li>
        <li> <strong>Ziel: </strong>{{ ziel }}</li>
        <li v-if="strecke"> <strong>Routenlänge: </strong>{{ strecke }}</li>
    </ul>
</li>
    
</template>


<script>
export default {
  name: 'ListItem',
  props: {
    datetime: String,
    event: String,
    treffpunkt: String,
    start: String,
    ziel: String,
    strecke: String
  }
}
</script>


<style>
    ul {
        padding-left: 0px;
        list-style-type: none;
    }
    .Datum {
        font-weight:bold;
        color:black
    }
    .Gruppenname {
        color:darkgreen;
        font-size: 20pt;
    }
    strong {
        text-align: left
    }
    h2 {
        margin-top: 0;
    }
</style>