<template>
    <Nav3 />
  <div class="app-container">
    <main class="form-signin w-100 m-auto">
    <h2>Joining a tournament</h2>
    <form @submit.prevent="save">
      <div class="form-group">
        <label>Game Name</label>
        <input type="text" v-model="tournament.name" class="form-control" placeholder="Game Name">
      </div>
      <div class="form-group">
        <label>Username</label>
        <input type="text" v-model="tournament.username" class="form-control" placeholder="Username" readonly>
      </div>
      <div class="form-group">
        <label>Team Name</label>
        <input type="text" v-model="tournament.teamname" class="form-control" placeholder="Team Name">
      </div>
      <div class="form-group">
        <label>Category</label>
        <input type="number" v-model="tournament.category" class="form-control" placeholder="Category" readonly>
      </div>
      <button type="submit" class="button1">Save</button>
    </form>
    </main>
  </div>
</template>

<script>
import axios from 'axios';
import Nav3 from "@/components/NavigationBar3.vue";
import { useStore } from 'vuex';
import { computed } from 'vue';

export default {
  components: { Nav3 },
  data() {
    return {
      tournament: {
        name: '',
        username: '',
        teamname: '',
        category: ''
      }
    }
  },
  setup() {
    const store = useStore();
    const customername = computed(() => store.state.customer.customername);
    return { customername };
  },
  created() {
    this.tournament.username = this.customername;
    const listID = this.$route.query.listID;
    if (listID) {
      this.tournament.category = listID;
    }
  },
  methods: {
    save() {
      axios.post("http://localhost:8080/api/v1/tournament/save", this.tournament)
          .then(({ data }) => {
            alert("Saved successfully");
            this.resetForm();
          })
          .catch(error => {
            console.error('Error saving tournament:', error);
            alert('Failed to save tournament');
          });
    },
    resetForm() {
      this.tournament.name = '';
      this.tournament.username = '';
      this.tournament.teamname = '';
      this.tournament.category = '';
    }
  }
}
</script>

<style scoped>
.app-container {
  background: url('@/assets/1_IYUOBlsG04aHTZ57Ans0hg.gif') no-repeat center center fixed;
  background-size: cover;
  height: 100vh;
  display: flex;
  flex-direction: column;
}
.button1 {
  background-color: green;
  border: none;
  color: white;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
}
.form-signin {
  background-color: orange;
  max-width: 330px;
  padding: 15px;
  margin: auto;
  background: rgba(255, 255, 255, 0.8);
  border-radius: 10px;
  margin-top: 100px;
}

.form-signin {
  background-color: orange;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}

</style>

