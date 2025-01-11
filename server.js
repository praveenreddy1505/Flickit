const express = require('express');
const mongoose = require('mongoose');
const app = express();
app.use(express.json());

// MongoDB connection
mongoose.connect(
  'MONGO_DB_URI=mongodb+srv://praveen:12345@cluster.mongodb.net/footballdrillDB',
  { useNewUrlParser: true, useUnifiedTopology: true }
);

// User Schema
const UserSchema = new mongoose.Schema({
  username: String,
  password: String,
});

const User = mongoose.model('User', UserSchema);

// Login/Signup Endpoint
app.post('/api/login', async (req, res) => {
  const { username, password } = req.body;

  // Check if the user already exists
  let user = await User.findOne({ username });
  if (!user) {
    // If not, create a new user
    user = new User({ username, password });
    await user.save();
    res.status(201).send({ message: 'User created', user });
  } else {
    res.status(200).send({ message: 'User exists', user });
  }
});

// Start server
app.listen(3000, () => console.log('Server is running on port 3000'));
