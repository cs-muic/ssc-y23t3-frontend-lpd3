import { createStore } from 'vuex'

export default createStore({
  state: {
    customer: {
      customerID: '',
      customername: '',
      password: ''
    }
  },
  getters: {
    isAuthenticated(state) {
      return !!state.customer.customername;
    }
  },
  mutations: {
    setCustomer(state, customer) {
      state.customer.customerID = customer.customerID;
      state.customer.customername = customer.customername;
      state.customer.password = customer.password;
    },
    clearCustomer(state) {
      state.customer.customerID = '';
      state.customer.customername = '';
      state.customer.password = '';
    }
  },
  actions: {
    saveCustomer({ commit }, customer) {
      localStorage.setItem('customer', JSON.stringify(customer));
      commit('setCustomer', customer);
    },
    loadCustomer({ commit }) {
      const customer = localStorage.getItem('customer');
      if (customer) {
        commit('setCustomer', JSON.parse(customer));
      }
    },
    clearCustomer({ commit }) {
      localStorage.removeItem('customer');
      commit('clearCustomer');
    }
  },
  modules: {
  }
});


