const express = require('express')
const app = express();

app.get('*', (req, res) => res.status(200).json('Hello from bind mount!'));

app.listen(3000, () => console.log('Server running on port 3000'));