require('dotenv').config();

module.exports = {
  development: {
    username: "root",
    password: "root",
    database: "mercadoLiebre16_db",
    host: "127.0.0.1",
    port: process.env.DB_PORT,
    dialect: "mysql",
  },
  test: {
    username: "root",
    password: null,
    database: "database_test",
    host: "127.0.0.1",
    dialect: "mysql",
  },
  production: {
    username: "root",
    password: null,
    database: "database_production",
    host: "127.0.0.1",
    dialect: "mysql",
  },
};
