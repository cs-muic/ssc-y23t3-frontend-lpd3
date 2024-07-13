import { createApp } from 'vue';
import App from './App.vue';
import store from './store';
import router from './router';

const app = createApp(App);

store.dispatch('loadCustomer');

app.use(store);
app.use(router);
app.mount('#app');

