<template>
  <div class="hello">
      <link href="https://fonts.googleapis.com/css?family=PT+Serif" rel="stylesheet">
      <div class="head">
        <h1>Politischer Infopoint</h1>
      </div>
      <div class="color">
        <h2>Finde Demos & Aktionen in deiner Nähe!</h2>
        <img src="../assets/Bild_Demo.jpg" alt="eine demo von fridays for future"/>
      </div>
  </div>
</template>

<script>
export default {
  name: 'Startseite',
  props: {
    msg: String
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
}
h1, h2 {
    text-align: center;
    margin: 0;
    font-family: "PT Serif", serif;
    line-height: 80px;
}
h2 {
    position: absolute;
    top: 150px;
    width: 100%;
    z-index: 1;
}
div.color, div.head {
    background: #45d94d;
}
</style>
