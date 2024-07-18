<template>
  <div class="topnav">
    <router-link to="/tournamentlist" class="btn btn-primary">Back to Tournament List</router-link>
    <div class="topnav-right">
      <router-link to="/login" class="btn btn-outline-light">Sign out</router-link>
    </div>
  </div>
</template>


<script setup lang="ts">

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
