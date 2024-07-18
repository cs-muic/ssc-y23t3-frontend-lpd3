<template>
    <Nav />
  <body>
    <div class="app-container">
    <h2>Tournament List</h2>
    <table class="styled-table">
      <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Game Name</th>
        <th scope="col">Game Link</th>
        <th scope="col">Max registrations</th>
        <th scope="col">Actions</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="tournament in tournaments" :key="tournament.listID">
        <td>{{ tournament.listID }}</td>
        <td>{{ tournament.gamename }}</td>
        <td><a :href="tournament.gamelink" target="_blank">{{ tournament.gamelink }}</a></td>
        <td>{{ tournament.totaluser }}</td>
        <td>
          <button type="button" class="button1" @click="redirectToRegister(tournament.listID, tournament.totaluser)">Register</button>
        </td>
      </tr>
      </tbody>
    </table>
    </div>
  </body>
</template>

<script>
import axios from 'axios';
import Nav from "@/components/NavigationBar1.vue";

export default {
  components: { Nav },
  data() {
    return {
      tournaments: []
    }
  },
  created() {
    this.loadTournaments();
  },
  methods: {
    loadTournaments() {
      const page = "http://localhost:8080/api/v1/gamelist/getAllCustomer";
      axios.get(page)
          .then(({ data }) => {
            console.log(data);
            this.tournaments = data;
          })
          .catch(error => {
            console.error('Error loading tournaments:', error);
            alert('Failed to load tournaments');
          });
    },
    redirectToRegister(listID, totaluser) {
      axios.get(`http://localhost:8080/api/v1/gamelist/getnumber/${listID}`)
          .then(({ data }) => {
            if (totaluser <= data) {
              alert("The tournament has reached the maximum number of participants.");
              this.$router.push('/tournamentlist');
            } else {
              this.$router.push({ path: '/tournamentregis', query: { listID } });
            }
          })
          .catch(error => {
            console.error('Error checking participant count:', error);
            alert('Failed to check participant count');
          });
    }
  }
}
</script>

<style scoped>
body {
  background: url('@/assets/51cc5b49-3776-4b90-953f-8f82b7113dd1_text.gif') no-repeat center center fixed;
  background-size: cover;
  margin: 0;
  padding: 0;
  height: 100%;
  overflow: auto;
}

.button1 {
  background-color: orange;
  border: none;
  color: black;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
}

.app-container {
  background: rgba(255, 255, 255, 0.8); /* Add a semi-transparent background to the container */
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center; /* Centers horizontally */
  padding: 20px;
}

.styled-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  font-family: sans-serif;
  min-width: 400px;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: auto;
  background: rgba(255, 255, 255, 0.8);
  border-radius: 10px;
  margin-top: 100px;
}

.button1 {
  background-color: orange;
  border: none;
  color: black;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
}

.button2 {
  background-color: lightblue;
  border: none;
  color: black;
  padding: 5px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
}

.form-floating {
  margin-bottom: 15px;
}

.styled-table thead tr {
  background-color: #009879;
  color: #ffffff;
  text-align: left;
}

.styled-table th,
.styled-table td {
  padding: 12px 15px;
}

.styled-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}
</style>
