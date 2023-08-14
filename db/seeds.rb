# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.create(
  first_name: "Joao",
  last_name: "Silva",
  yob: 1995,
  is_alive: true
)

Author.create(
  first_name: "Maria",
  last_name: "Silva",
  yob: 1943,
  is_alive: false
)

Author.create(
  first_name: "Antonio",
  last_name: "Silva",
  yob: 2000,
  is_alive: true
)