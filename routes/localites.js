const express = require("express");
const connection = require("../config");
const router = express.Router();

router.get("/", (req, res) => {
  connection.query(
    `SELECT * FROM location as t1 
    WHERE t1.parentId IS NULL`,
    (err, premier) => {
      if (err) {
        res.status(500).send("Error retrieving data for location");
      } else {
        connection.query(
          `SELECT * FROM location as t1 
          WHERE t1.parentId = 1 
          or t1.parentId = 62 
          or t1.parentId = 84 
          or t1.parentId = 120`,
          (err, deuxieme) => {
            if (err) {
              res
                .status(500)
                .send("Error retrieving data for location deuxieme");
            } else {
              connection.query(
                `SELECT * FROM location as t1 
              WHERE t1.parentId = 2 
              or t1.parentId = 63 
              or t1.parentId = 85 
              or t1.parentId = 87
              or t1.parentId = 89 
              or t1.parentId = 121 
              or t1.parentId = 127`,
                (err, troisieme) => {
                  if (err) {
                    res
                      .status(500)
                      .send("Error retrieving data for location troisieme");
                  } else {
                    connection.query(
                      `SELECT * FROM location as t1 
                  WHERE t1.parentId != 2 
                  and t1.parentId != 63 
                  and t1.parentId != 85 
                  and t1.parentId != 87
                  and t1.parentId != 89 
                  and t1.parentId != 121 
                  and t1.parentId != 127
                  and t1.parentId != 1 
                  and t1.parentId != 62 
                  and t1.parentId != 84 
                  and t1.parentId != 120
                  and t1.parentId IS NOT NULL`,
                      (err, quatrieme) => {
                        if (err) {
                          res
                            .status(500)
                            .send(
                              "Error retrieving data for location quatrieme"
                            );
                        } else {
                          res
                            .status(200)
                            .send({ premier, deuxieme, troisieme, quatrieme });
                        }
                      }
                    );
                  }
                }
              );
            }
          }
        );
      }
    }
  );
});
router.get("/all", (req, res) => {
  connection.query("SELECT * FROM location", (err, results) => {
    if (err) {
      res.status(500).send("Error retrieving location");
    } else {
      res.status(200).json(results);
    }
  });
});
router.get("/:id", (req, res) => {
  connection.query(
    "SELECT * FROM parent JOIN location ON parent.id=parentId WHERE parent.id=?",
    [req.params.id],
    (err, results) => {
      if (err) {
        res.status(500).send("Error retrieving this location");
      } else {
        res.status(200).json(results);
      }
    }
  );
});

module.exports = router;
