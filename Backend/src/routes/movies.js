const { Router } = require('express');
const router = Router();

const movies = require('./sample.json');
console.log(movies);

router.get('/movies', (req, res) => {
    res.send('movies');
});

module.exports = router;