<template>
  <div class="app-container">
    <main class="form-signin w-100 m-auto">
      <form @submit.prevent="onSubmit">
        <h1 class="h3 mb-3 fw-normal">Sign up</h1>

        <div class="form-floating">
          <input
              type="email"
              class="form-control"
              id="emailInput"
              placeholder="Email"
              v-model="data.Email"
              required
          />
          <label for="emailInput"></label>
        </div>

        <div class="form-floating">
          <input
              type="text"
              class="form-control"
              id="nameInput"
              placeholder="Name"
              v-model="data.Name"
              required
          />
          <label for="nameInput"></label>
        </div>

        <div class="form-floating">
          <input
              type="password"
              class="form-control"
              id="passwordInput"
              placeholder="Password"
              v-model="data.password"
              required
          />
          <label for="passwordInput"></label>
        </div>

        <div class="form-floating">
          <input
              type="password"
              class="form-control"
              id="passwordConfirmationInput"
              placeholder="Confirm Password"
              v-model="data.password_confirmation"
              required
          />
          <label for="passwordConfirmationInput"></label>
        </div>

        <button class="btn btn-primary w-100 py-2" type="submit">Sign up</button>
      </form>
    </main>
  </div>
</template>

<script setup lang="ts">
import { reactive } from 'vue';
import axios from 'axios';
import { useRouter } from 'vue-router';

const data = reactive({
  Email: '',
  Name: '',
  password: '',
  password_confirmation: ''
});
const router = useRouter();

const onSubmit = async () => {
    await axios.post('http://localhost:8080/api/register', data);
    await router.push('/login');
};
</script>

<style scoped>
.app-container {
  background: url('@/assets/154beb65838927.5b0279a21ff61.gif') no-repeat center center fixed;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
}
.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: auto;
  background: rgba(255, 255, 255, 0.8); /* Add some background to make the form readable */
  border-radius: 10px;
  margin-top: 100px; /* To ensure the form is not hidden behind the fixed header */
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: auto;
}

.form-floating {
  margin-bottom: 15px;
}
</style>

