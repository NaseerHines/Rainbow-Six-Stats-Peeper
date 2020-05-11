<template>
  <div>
    <form >
      <input type="text" v-model="username" name="username" placeholder="Enter Your Username">
      <input type="text" v-model="platform" name="platform" placeholder="Enter Your Platform">
      <input type="submit" value="submit" class="btn">
    </form>
  </div>
</template>

<script>
export default {
  name: "Lookup",
  data() {
    return {
      username: '',
      platform: ''
    }
  },
  methods: {
    lookupStats() {
      const newStats = {
        username: this.username,
        platform: this.platform
      }
      // Send up to parent
      this.$emit('new-stats', newStats);
    //   this.username = '';
    //   this.platform = '';
    }
  }
}
</script>

<style scoped> 
  form {
    display: flex;
  }
  input[type="text"] {
    flex: 10;
    padding: 5px;
  }
  input[type="submit"] {
    flex: 2;
  }
</style>