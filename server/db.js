var promise = require('bluebird'); //maneja lsa promesas de la 
var app = express();

var options = {
  promiseLib: promise // Initialization Options
};

//declaro el path de conecxion a la Base de postgresSql//
var pgp = require('pg-promise')(options);
var connectionString = 'postgres://postgres:1234@localhost:5432/prueba';
var db = pgp(connectionString);



//  query functions de la BD //
//Metodo (GET): router.get('/api/players', db.getAllPlayers);//
              //router.get('/api/players/:id', db.getSinglePlayer);//

function getAllPlayers(req, res, next) {
  db.any('select * from player')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved ALL players'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

function getSinglePlayer(req, res, next) {
    var playerID = parseInt(req.params.id);
    db.one('select * from player where id = $1', playerID)
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'recupera un Player'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

//Metodo (POST): router.post('/api/players', db.createPlayer);//

function createPlayer(req, res, next) {
  console.log(req.query);
  db.none('insert into player(name, surname, dob)' + 'values (${name}, ${surname}, ${dob})', req.query)
    .then(function () {
      res.status(200)
        .json({
          status: 'success',
          message: 'Inserted one player'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

//Metodo (PUT): router.put('/api/players/:id', db.updatePlayer);//

function updatePlayer(req, res, next) {
  console.log(req.query);
  db.none('update player set name=$1, surname=$2, dob=$3 where id=$4',
    [req.query.name, req.query.surname, req.query.dob, parseInt(req.params.id)])
    .then(function () {
      res.status(200)
        .json({
          status: 'success',
          message: 'Actualizado el player'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}

//Metodo (DELETE): router.delete('/api/players/:id', db.deletePlayer);//

function deletePlayer(req, res, next) {
  var playerId = parseInt(req.params.id);
  db.result('delete from player where id = $1', playerId)
    .then(function (result) {
      /* jshint ignore:start */
      res.status(200)
        .json({
          status: 'success',
          message: `Removed ${result.rowCount} player`
        });
      /* jshint ignore:end */
    })
    .catch(function (err) {
      return next(err);
    });
}

/////////////
// Exports
/////////////

module.exports = {
  getAllPlayers: getAllPlayers,
  getSinglePlayer: getSinglePlayer,
  createPlayer: createPlayer,
  updatePlayer: updatePlayer,
  deletePlayer: deletePlayer
};

module.exports = app;