<template>
  <Nav />
  <body>
  <div class="app-container">
  <div id="app" class="container bg-white p-8">
    <h2 class="text-3xl font-bold text-center mb-6">Tournament Sign Up</h2>
    <form>
      <div class="mb-4">
        <input type="text" placeholder="GameID" class="form-input">
      </div>
      <div class="mb-4">
        <input type="email" placeholder="In-game username" class="form-input">
      </div>
      <div class="mb-4">
        <input type="password" placeholder="Team name (write None if non applicable)" class="form-input">
      </div>
      <button class="w-full bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 rounded-md focus:outline-none">
        Sign Up
      </button>
    </form>
  </div>
  </div>
  </body>
</template>

<style scoped>
.app-container {
  justify-content: center;
  align-items: center;
  background: url('@/assets/cool-background-1.png') no-repeat center center fixed;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
}
body {
  background-color: #dddddd;
  display: flex;
  justify-content: right;
  align-items: center;
  height: 100vh;
  margin: 0;
}

.container {
  max-width: 400px;
  border: 2px solid rgb(0, 0, 0);
  border-radius: 8px;
  padding: 20px;
}

.form-input {
  transition: border-color 0.3s ease;
  border: 1px solid #ccc;
  border-radius: 4px;
  padding: 8px;
  width: 100%;
  margin-bottom: 10px;
}

.form-input:focus {
  border-color: #4f46e5;
  outline: none;
}

#app {
  background-color: #dddddd;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-left: auto;
  margin-right: auto;
  width: 100%;
  max-width: 400px;
  padding: 20px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
}
</style>

<script setup lang="ts">
import Nav from "@/components/NavigationBar1.vue";
</script>
