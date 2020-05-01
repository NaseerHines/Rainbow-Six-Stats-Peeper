const mysql = require("mysql");
const DB_HOST = "localhost";
const DB_USER = "root";
const DB_PASS = "";
const DB_NAME = "siege";
const connection = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASS,
  database: DB_NAME,
});
connection.connect((err) => {
  if (err) {
    console.log(err);
  } else {
    console.log("Database connected");
  }
});
const pullAccount = (callback) => {
  connection.query("SELECT * FROM Account", (err, result) => {
    if (err) {
      console.error(err);
    }
    console.log(result);
    callback(result);
  });
};
const saveAccount = (account) => {
  console.log(account);
  if (account) {
    const { username, platform, kd, wl, playtime, searchCount } = account;
    const sql = `INSERT INTO Account(username, platform, kdRatio, wlRatio, playtime, searchedCount) VALUES('${username}', '${platform}', ${kd}, ${wl}, '${playtime}', '${searchCount}')`;
    connection.query(sql, (err) => {
      if (err) {
        console.log(err);
      }
    });
    console.log("saved account");
  }
};
module.exports.pullAccount = pullAccount;
module.exports.saveAccount = saveAccount;
