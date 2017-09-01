# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cour.create(nom_c: "Maths", coef: 7)
Cour.create(nom_c: "Français", coef: 6)
Cour.create(nom_c: "Histoire-Géographie", coef: 3)
Cour.create(nom_c: "Sport", coef: 2)
Cour.create(nom_c: "Philosophie", coef: 3)
Cour.create(nom_c: "Allemand", coef: 2)

Todo.create name:"BatchIncoming", description:"Traitements des Incoming Visa..."
Todo.create name:"Novabank", description:"Comptatbilisation du Lot Novabank..."
Todo.create name:"Systac 07h45 ", description:"Mise à disposition des restitutions systac de la veille"
Todo.create name:"Vacation Swift 10h00", description:"Suivi Traitement des vacations de 10h00 "