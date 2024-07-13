<template>
  <div class="topnav">
    <router-link to="/index" class="btn btn-primary">Home</router-link>
    <router-link to="/contact" class="btn btn-secondary">Tournament list</router-link>
    <router-link to="/tournament" class="btn btn-secondary">Create tournament</router-link>
    <router-link to="/contact" class="btn btn-secondary">My activity</router-link>
    <div class="topnav-right">
      <router-link to="/login" class="btn btn-outline-light">Sign In</router-link>
      <router-link to="/register" class="btn btn-warning">Register</router-link>
    </div>
  </div>
</template>


<script setup lang="ts">
// Import statements or script setup if needed
</script>

<style scoped>
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav-right{
  float: right;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>

