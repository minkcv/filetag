var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    var ejsdata = [ {name: "will"}, {id: 123} ];
    var string = "Hello ejs";
    res.render('pages/index', {ejsdata: ejsdata, string: string});
});

module.exports = router;
