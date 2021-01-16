"use strict";

/** Shared config for application; can be required many places. */

require("dotenv").config();
require("colors");

const SECRET_KEY = process.env.SECRET_KEY || "secret-dev";

const PORT = +process.env.PORT || 3001;

// Use dev database, testing database, or via env var, production database
function getDatabaseUri() {
  return (process.env.NODE_ENV === "test")
      ? "postgresql://rainb:qwerty@localhost/nops_task_test"
      : "postgresql://rainb:qwerty@localhost/nops_task";
  // IF ON WINDOWS, COMMENT BELOW, IF ON MAC, COMMENT ABOVE
  // return (process.env.NODE_ENV === "test")
  //     ? "nops_task_test"
  //     : process.env.DATABASE_URL || "nops_task";
}

// Speed up bcrypt during tests, since the algorithm safety isn't being tested
//
// Evaluate in mid-late 2021 if this should be increased to 13 for non-test use
const BCRYPT_WORK_FACTOR = process.env.NODE_ENV === "test" ? 1 : 12;

// for re-seeding sql server:
// >psql nops_task < nops-backend.sql

console.log("Config:".green);
console.log("SECRET_KEY:".yellow, SECRET_KEY);
console.log("PORT:".yellow, PORT.toString());
console.log("BCRYPT_WORK_FACTOR".yellow, BCRYPT_WORK_FACTOR);
console.log("Database:".yellow, getDatabaseUri());
console.log("---");

module.exports = {
  SECRET_KEY,
  PORT,
  BCRYPT_WORK_FACTOR,
  getDatabaseUri,
};
