const express = require('express')
const path = require('path');

const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'static', 'index.html'));
});

app.use(express.static('static'))

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}`)
})
