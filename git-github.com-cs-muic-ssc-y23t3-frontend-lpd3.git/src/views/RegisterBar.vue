<template>
  <div class="app-container">
    <main class="form-signin w-100 m-auto">
      <form @submit.prevent="handleSubmit">
        <h1 class="h3 mb-3 fw-normal">Sign up</h1>

        <div class="form-floating">
          <input type="email" class="form-control" id="floatingInputEmail" placeholder="Email" v-model="data.Email" required>
          <label for="floatingInputEmail">Email address</label>
        </div>

        <div class="form-floating">
          <input type="text" class="form-control" id="floatingInputName" placeholder="Name" v-model="data.Name" required>
          <label for="floatingInputName">Full Name</label>
        </div>

        <div class="form-floating">
          <input type="password" class="form-control" id="floatingPassword" placeholder="Password" v-model="data.password" required>
          <label for="floatingPassword">Password</label>
        </div>

        <div class="form-floating">
          <input type="password" class="form-control" id="floatingConfirmPassword" placeholder="Confirm password" v-model="data.password_confirmation" required>
          <label for="floatingConfirmPassword">Confirm Password</label>
        </div>

        <button class="btn btn-primary w-100 py-2" type="submit">Sign up</button>
      </form>
    </main>
  </div>
</template>

<script setup lang="ts">
import { reactive } from 'vue'

const data = reactive({
  Email: '',
  Name: '',
  password: '',
  password_confirmation: ''
})

const handleSubmit = () => {
  console.log('Form submitted:', data)
}
</script>

<style scoped>
/* Your scoped styles */
</style>
