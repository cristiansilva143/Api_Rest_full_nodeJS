var express = require('express');
var router = express.Router();
var db = require('../server/db');


app.get('/', function(req, res) {
    console.log('Path: '+__dirname);
    res.sendFile(__dirname + '/index.html');
});


//////////////////////
// Postgres queries
//////////////////////

router.get('/api/equipo', db.getAllPlayers);
router.get('/api/equipo/:id', db.getSinglePlayer);
router.post('/api/equipo', db.createPlayer);
router.put('/api/equipo/:id', db.updatePlayer);
router.delete('/api/equipo/:id', db.deletePlayer);

module.exports = router;