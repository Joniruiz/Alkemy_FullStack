require('dotenv').config();

module.exports = {
//config
username: process.env.DB_USERNAME || "root",
password:process.env.DB_PASSWORD || null,
database: process.env.DB_DATABASE || 'db_alkemy',
host: process.env.DB_HOST || '127.0.0.1',
dialect: process.env.DB_DIALECT || 'mysql',
  // Configurar Seeds
  seederStorage: "sequelize",
  seederStorageTableName: "seeds",

  // Configuracion de Migrations
  migrationStorage: "sequelize",
  migrationStorageTableName: "migrations"

}
