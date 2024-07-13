<template>
  <div class="app-container">
    <main class="form-signin w-100 m-auto">
      <form @submit.prevent="onSubmit">
        <h1 class="h3 mb-3 fw-normal">Sign in</h1>

        <div class="form-floating">
          <input
              type="email"
              class="form-control"
              id="floatingInput"
              placeholder="Email"
              v-model="data.email"
              required
          />
          <label for="floatingInput"> </label>
        </div>
        <div class="form-floating">
          <input
              type="password"
              class="form-control"
              id="floatingPassword"
              placeholder="Password"
              v-model="data.password"
              required
          />
          <label for="floatingPassword"> </label>
        </div>
        <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>
        <h2> </h2>
        <router-link to="/register" type="submit"> No account? Click here </router-link>
      </form>
    </main>
  </div>
</template>

<script setup lang="ts">
import { reactive } from 'vue';
import axios from 'axios';
import { useRouter } from 'vue-router';

const data = reactive({
  email: '',
  password: ''
});
const router = useRouter();

const onSubmit = async () => {
    await axios.post('http://localhost:8080/api/login', data);
    await router.push('/');
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
  background: rgba(255, 255, 255, 0.8);
  border-radius: 10px;
  margin-top: 100px;
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
