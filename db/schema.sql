-- Database Creation
CREATE DATABASE burgers_db;


-- Then run the following in your Sequelize CLI to create the migrations and seed the database
-- Note this only works since the migrations already exist in the repo
` sequelize db:migrate ` -- for migration (making SQL tables)
` sequelize db:seed:all ` -- for seeding (adding data to tables)

` sequelize init `
` sequelize model:create --name burgers --attributes 'burger_name:string devoured:boolean' `
` sequelize db:migrate `
` sequelize seed:create --name burger-seeder `
` sequelize db:seed:all `
` sequelize model:create --name devourers --attributes 'devourer_name:string' `
` sequelize db:migrate `

-------------------------------------------
` sequelize db:seed:undo:all `
` sequelize db:migrate:undo:all `