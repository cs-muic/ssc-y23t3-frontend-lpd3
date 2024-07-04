<template>
  <Nav />
  <router-view />
</template>
<script>
import Nav from '@/components/NavigationBar.vue'
export default {
  // eslint-disable-next-line vue/no-unused-components
  components: { Nav }
}
</script>

<style>
.borderless-btn {
  border: none;
}
.app-container {
  background: url('@/assets/154beb65838927.5b0279a21ff61.gif') no-repeat center center fixed;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
}

header {
  width: 100%;
  background-color: black;
  position: fixed;
  top: 0;
  z-index: 1000;
}

header .container {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

header .nav {
  display: flex;
  align-items: center;
  gap: 20px; /* Add gap between nav items */
}

header .nav-link {
  padding-left: 1rem;
  padding-right: 1rem;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: auto;
  background: rgba(255, 255, 255, 0.8); /* Add some background to make the form readable */
  border-radius: 10px;
  margin-top: 100px; /* To ensure the form is not hidden behind the fixed header */
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

.form-signin img {
  margin-bottom: 15px;
}
</style>
