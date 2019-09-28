<template>
<li>
    <div class="Datum"> 20.09.2019 </div>
    <h2><span class="Gruppenname"> Fridays for Future </span>Demo</h2>
    <ul>
        <li> <strong>Treffpunkt</strong> Alte Oper</li>
        <li> <strong>Start</strong> 12 Uhr</li>
        <li> <strong>Ziel</strong> Römerplatz</li>
        <li> <strong>Strecke</strong> 3km</li>
    </ul>
</li>
    
</template>


<script>
export default {
  name: 'ListItem',
  props: {
    msg: String
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