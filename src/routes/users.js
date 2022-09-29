const express = require('express');
const router = express.Router();

const {register,processRegister,login,processLogin,profile,updateProfile,logout,remove} = require('../controllers/usersController');


router
    .get('/register',register)
    .post('/register',processRegister)
    .get('/login',login)
    .post('/login',processLogin)
    .get('/profile',profile)
    .put('update',updateProfile)
    .get('logout',logout)
    .delete('remove',remove)


module.exports = router;
