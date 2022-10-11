# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Usuario.create([{
	"nome": "João Jorge",
	"email": "joaojorgeevangelista@gmail.com",
	"senha": "12345678",
	"telefone": "83987969260",
	"cpf": "70078454441"
},
{
	"nome": "André Alencar",
	"email": "andreelancar@gmail.com",
	"senha": "123",
	"telefone": "123",
	"cpf": "123"
}])