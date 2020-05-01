<template>
  <div id="app">
    <Header />
    <!-- <Stats v-bind:stats="stats"/> -->
  </div>
</template>

<script>
import Header from './components/layout/Header';
// import Stats from './components/Stats';
export default {
  name: 'App',
  components: {
    Header,
    // Stats
  },
  data() {
    return {
      stats: [
        {
          id: 1,
          account: 'Hines0106',
          platform: 'Xbox',
          hours: 1100,
          kd: 1.5,
          wl: 2.4,
        },
      ]
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
