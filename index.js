const express = require('express');
const app = express();

// Endpoint 1: Home
app.get('/', (req, res) => {
  res.send('Deploy nodejs app with github self hosted runner!');
});

// Endpoint 2: Greeting
app.get('/greeting', (req, res) => {
  const name = req.query.name || 'Anonymous';
  res.send(`Hello, ${name}!`);
});

// Start the server
app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
