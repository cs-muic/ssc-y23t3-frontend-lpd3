<template>
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
header {
  width: 100%;
  background-color: black;
  position: fixed;
  top: 0;
  z-index: 1000;
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
