<template>
  <header class="p-3 text-bg-dark fixed-top">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-between w-100">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
            <use xlink:href="#bootstrap" />
          </svg>
        </a>

        <ul class="nav col-12 col-lg-auto mb-2 justify-content-center mb-md-0 gap-3">
          <router-link to="/"> class="nav-link px-2 text-secondary">Home</router-link>
          <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
          <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
        </ul>

        <div class="ms-auto text-end">
          <router-link to="/login" class="btn btn-outline-light me-2 borderless-btn">Login</router-link>
          <router-link to="/register" class="btn btn-warning">Sign-up</router-link>
        </div>
      </div>
    </div>
  </header>
</template>

<script setup lang="ts">
// Import statements or script setup if needed
</script>

<style scoped>
/* Component-specific styles */
</style>
