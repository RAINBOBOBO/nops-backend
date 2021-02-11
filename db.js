"use strict";

/** Database setup for nops-backend. */

const { Client } = require("pg");
const { getDatabaseUri } = require("./config");
const { ExpressError } = require("./expressError");

const db = new Client({
  connectionString: getDatabaseUri(),
});

try {
  db.connect();
  console.log("Successfully connected to db.");
} catch (err) {
  throw new Error("Failed to connect to db:" + err)
}

module.exports = db;
