const { Router } = require("express");
const axios = require("axios");
const { token } = require('../config');
const { pullAccount, saveAccount } = require('../db/index')
const apiRouter = Router();

const grabAccount = (username, platform, cb) => {
  const apiUrl = `https://api2.r6stats.com/public-api/stats/${username}/${platform}/generic`;
  const options = {
    headers: {
      Authorization: `Bearer ${token}`,
    },
  };
  return axios
    .get(apiUrl, options)
    .then((account) => {
      const stats = account.data.stats.general;
      cb(stats);
    })
    .catch((err) => {
      console.log(err, "didn't work");
    });
};

apiRouter.post("/account", (req, res) => {
  const { username, platform } = req.body;
  console.log(username, platform);
  grabAccount(username, platform, (data) => {
    console.log(data);
    saveAccount(data);
    res.send(data);
  });
});

module.exports.apiRouter = apiRouter;
