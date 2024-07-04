<template>
  <div class="app-container">
    <header class="p-3 text-bg-dark fixed-top">
      <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-between w-100">
          <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
              <use xlink:href="#bootstrap" />
            </svg>
          </a>

          <ul class="nav col-12 col-lg-auto mb-2 justify-content-center mb-md-0 gap-3">
            <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
            <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
            <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
            <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
            <li><a href="#" class="nav-link px-2 text-white">About</a></li>
          </ul>

          <div class="ms-auto text-end">
            <button class="btn btn-outline-light me-2 borderless-btn">Login</button>
            <button type="button" class="btn btn-warning">Sign-up</button>
          </div>
        </div>
      </div>
    </header>
    <main class="form-signin w-100 m-auto">
      <form>
        <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

        <div class="form-floating">
          <input type="email" class="form-control" id="floatingInput" placeholder="Email" required>
          <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
          <input type="password" class="form-control" id="floatingPassword" placeholder="Password" required>
          <label for="floatingPassword">Password</label>
        </div>
        <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>
      </form>
    </main>
  </div>
</template>

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

<script>
export default {
  name: 'App'
}
</script>
