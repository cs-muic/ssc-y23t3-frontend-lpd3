<template>
  <Nav />
  <div>
    <p>Welcome, {{ customername }}!</p>
  </div>
</template>

<script setup>
import { computed } from 'vue';
import { useStore } from 'vuex';

const store = useStore();
const customername = computed(() => store.state.customer.customername);
</script>

