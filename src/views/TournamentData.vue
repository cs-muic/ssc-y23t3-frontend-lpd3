<template>
    <Nav2 />
    <body>
    <div class="app-container">
    <h2>Tournament Registrations</h2>
    <table class="styled-table">
      <thead>
      <tr>
        <th scope="col">Tournament ID</th>
        <th scope="col">In Game Name</th>
        <th scope="col">Username</th>
        <th scope="col">Teamname</th>
      </tr>
      </thead>
      <tbody>
      <tr v-for="tournament in tournaments" :key="tournament.gameID">
        <td>{{ tournament.gameID }}</td>
        <td>{{ tournament.name }}</td>
        <td>{{ tournament.username }}</td>
        <td>{{ tournament.teamname }}</td>
      </tr>
      </tbody>
    </table>
  </div>
    </body>
</template>

<script>
import axios from 'axios';
import Nav2 from "@/components/NavigationBar2.vue";
import { useRoute } from 'vue-router';

export default {
  components: { Nav2 },
  data() {
    return {
      tournaments: []
    };
  },
  created() {
    this.loadTournamentData();
  },
  methods: {
    loadTournamentData() {
      const route = useRoute();
      const gameID = route.query.gameID;
      const url = `http://localhost:8080/api/v1/tournament/list/${gameID}`;
      axios.get(url)
          .then(({ data }) => {
            console.log(data);
            this.tournaments = data;
          })
          .catch(error => {
            console.error('Error loading tournament data:', error);
            alert('Failed to load tournament data');
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
