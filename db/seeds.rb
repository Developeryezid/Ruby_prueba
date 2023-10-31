# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(nombre_rol: "Administrador")
Role.create(nombre_rol: "Gerente")
Role.create(nombre_rol: "Usuario")

Document.create(tipo_documento: "Cédula de Identidad")
Document.create(tipo_documento: "Pasaporte")
Document.create(tipo_documento: "VISA")