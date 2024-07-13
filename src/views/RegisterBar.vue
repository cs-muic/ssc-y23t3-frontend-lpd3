<template>
  <Nav1 />
  <div class="app-container">
    <main class="form-signin w-100 m-auto">
      <form @submit.prevent="save">
        <h1 class="h3 mb-3 fw-normal">Sign up</h1>

        <div class="form-floating">
          <input
              type="text"
              class="form-control"
              id="customerNameInput"
              placeholder="Customer Name"
              v-model="customer.customername"
              required
          />
          <label for="customerNameInput"> </label>
        </div>

        <div class="form-floating">
          <input
              type="password"
              class="form-control"
              id="passwordInput"
              placeholder="Password"
              v-model="customer.password"
              required
          />
          <label for="passwordInput"> </label>
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
import Nav1 from "@/components/NavigationBar.vue";

const customer = reactive({
  customerID: '',
  customername: '',
  password: ''
});

const router = useRouter();

import { useStore } from 'vuex';
const store = useStore();


const save = async () => {
  try {
    const response = await axios.post('http://localhost:8084/api/v1/customer/save', customer);
    const savedCustomer = response.data.toString();
    store.dispatch('saveCustomer', savedCustomer);
    customer.customerID = '';
    customer.customername = '';
    customer.password = '';
    await router.push('/index');
  } catch (error) {
    console.error("There was an error registering the customer!", error);
  }
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

.form-floating {
  margin-bottom: 15px;
}
</style>



