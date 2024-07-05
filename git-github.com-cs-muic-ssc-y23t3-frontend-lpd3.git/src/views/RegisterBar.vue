<template>
  <div class="app-container">
    <main class="form-signin w-100 m-auto">
      <form @submit.prevent="onSubmit">
        <h1 class="h3 mb-3 fw-normal">Sing up</h1>

        <!-- First Name Field -->
        <div class="form-floating">
          <input
              type="text"
              class="form-control"
              id="firstNameInput"
              placeholder="First Name"
              v-model="data.firstName"
              required
          />
          <label for="firstNameInput"></label>
        </div>

        <!-- Last Name Field -->
        <div class="form-floating">
          <input
              type="text"
              class="form-control"
              id="lastNameInput"
              placeholder="Last Name"
              v-model="data.lastName"
              required
          />
          <label for="lastNameInput"></label>
        </div>

        <!-- Email Field -->
        <div class="form-floating">
          <input
              type="email"
              class="form-control"
              id="emailInput"
              placeholder="Email"
              v-model="data.email"
              required
          />
          <label for="emailInput"></label>
        </div>

        <!-- Password Field -->
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

        <!-- Confirm Password Field -->
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

// Reactive data object including firstName and lastName
const data = reactive({
  firstName: '',
  lastName: '',
  email: '',
  password: '',
  password_confirmation: ''
});

const router = useRouter();

// Submit handler for the form
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

.form-floating {
  margin-bottom: 15px;
}
</style>
