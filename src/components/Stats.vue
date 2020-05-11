<template>
  <div>
    <!-- <form >
      <input type="text" v-model="title" name="username" placeholder="Enter Your Username">
      <input type="text" v-model="title" name="platform" placeholder="Enter Your Platform">
      <input type="submit" value="submit" class="btn">
    </form> -->
    <h2>Lookup An Account's Stats</h2>
    <div v-bind:key="stat.id" v-for="stat in stats">
      <h3>Viewing {{stat.account}} Stats</h3>
        <h4>Platform: {{stat.platform}}</h4>
        <h4>Hours: {{stat.hours}}</h4>
        <h4>Kills to Deaths: {{stat.kd}}</h4>
        <h4>Wins To Loses: {{stat.wl}}</h4>
    </div>
  </div>
</template>

<script> 
  export default {
    name: 'Stats',
    props: ["stats"]
  }
</script>

<style scoped> 

</style>