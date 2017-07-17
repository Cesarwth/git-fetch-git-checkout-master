# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
role = Role.create!(name: 'admin', status: 1)
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', roles: [role])
# Creates default unique contact record
Contact.create(address: 'Sector Capelo Calle Cipreses. ref:Frente a la Urbanización Hacienda Capelo', phone: 'Administración: 022863322 ; Garita: 022867407', email: 'ciudadelaterranova@yahoo.com')
# Creates default categories
Category.create(title: 'Información Organizacional', description: 'Información Organizacional texto', position: 0, image: 'informacion_organizacional.png', status: 1)
Category.create(title: 'Información Administrativa', description: 'Información Administrativa texto', position: 1, image: 'informacion_administrativa.png', status: 1)
Category.create(title: 'Información Financiera', description: 'Información Financiera texto', position: 2, image: 'informacion_financiera.png', status: 1)
Category.create(title: 'Eventos Sociales', description: 'Eventos Sociales Texto', position: 3, image: 'eventos_sociales.png', status: 1)
Category.create(title: 'Sede Social - BBQ - Canchas Deportivas', description: 'Sede Social - BBQ - Canchas Deportivas texto', position: 4, image: 'sede_social.png', status: 1)

RotatingImage.create(name: 'Imagen1', file_name: '/assets/rotativas/imagen1.jpg',  position: 1 , status: 1)
RotatingImage.create(name: 'Imagen2', file_name: '/assets/rotativas/imagen2.jpg',  position: 1 , status: 1)
RotatingImage.create(name: 'Imagen3', file_name: '/assets/rotativas/imagen3.jpg',  position: 1 , status: 1)
RotatingImage.create(name: 'Imagen4', file_name: '/assets/rotativas/imagen4.jpg',  position: 1 , status: 1)
