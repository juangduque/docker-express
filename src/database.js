const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017', {
  useNewUrlParser: true,
  useUnifiedTopology: true,  
})
  .then(db => console.log('DB is connected', db.connection.host))
  .catch(err => console.error(err));