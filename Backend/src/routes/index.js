const { Router } = require('express');
const router = Router();

router.get('/', (req, res) => {
    res.send('Hello World');
    res.json({"Title": "Hello World"});
});

module.exports = router;