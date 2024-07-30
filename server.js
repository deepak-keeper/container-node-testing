const express = require('express');
const app = express();

require('dotenv').config();
const port = process.env.PORT || 3000;
const dbUrl = process.env.DATABASE_URL;
const apiKey = process.env.API_KEY;
// console.log(dbUrl, apiKey);


app.get('/', (req, res) => {
  res.send('Hello, Keeper!' + dbUrl + apiKey);
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
