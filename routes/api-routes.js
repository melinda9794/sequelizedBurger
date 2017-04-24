var db = require("../models");

module.exports = function(app) {
    app.post("/", (req, res) => {
        db.Burger.create({
            burger_name: req.body.burger_name
        }).then( (burgers_db) => {
            res.redirect("/");
        });
    });

    app.put("/:id", (req, res) => {
        db.Burger.update({
            devoured: req.body.devoured
        }, {
            where: {
                id: req.params.id
            }
        }).then( (burgers_db) => {
            res.redirect("/");
        })
    });

    app.put("/", (req, res) => {
        db.Burger.update({
            devoured: req.body.devoured
        }, {
            where: {
                devoured: true
            }
        }).then( (burgers_db) => {
            res.redirect("/");
        });
    });
};