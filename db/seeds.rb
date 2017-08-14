# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
role = Role.create!(name: 'admin', status: 1)
manager = Role.create!(name: 'manager', status: 1)
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', roles: [role], first_name: 'Admin', last_name: 'User', phone: '1234567890', id_card: '1234567890')
User.create!(email: 'manager@example.com', password: 'password', password_confirmation: 'password', roles: [manager], first_name: 'Manager', last_name: 'User', phone: '1234567890', id_card: '1234567890')
# Creates default unique contact record
Contact.create(address: 'Sector Capelo Calle Cipreses. ref:Frente a la Urbanización Hacienda Capelo', phone: 'Administración: 022863322 ; Garita: 022867407', email: 'ciudadelaterranova@yahoo.com')
# Creates default categories
Category.create(title: 'Información Organizacional', description: 'Información Organizacional texto', position: 1, image: File.new("#{Rails.root}/app/assets/images/default_categories/informacion_organizacional.jpg"), status: 1)
Category.create(title: 'Información Administrativa', description: 'Información Administrativa texto', position: 2, image: File.new("#{Rails.root}/app/assets/images/default_categories/informacion_administrativa.jpg"), status: 1)
Category.create(title: 'Información Financiera', description: 'Información Financiera texto', position: 3, image: File.new("#{Rails.root}/app/assets/images/default_categories/informacion_financiera.jpg"), status: 1)
Category.create(title: 'Eventos Sociales', description: 'Eventos Sociales Texto', position: 4, image: File.new("#{Rails.root}/app/assets/images/default_categories/eventos_sociales.jpg"), status: 1)
Category.create(title: 'Sede Social - BBQ - Canchas Deportivas', description: 'Sede Social - BBQ - Canchas Deportivas texto', position: 5, image: File.new("#{Rails.root}/app/assets/images/default_categories/sede_social.jpg"), status: 1)

RotatingImage.create(name: 'Imagen1', file_name: '/assets/rotativas/imagen1.jpg',  position: 1 , status: 1,rotating_file: File.new("#{Rails.root}/app/assets/images/rotativas/imagen1.jpg"))
RotatingImage.create(name: 'Imagen2', file_name: '/assets/rotativas/imagen2.jpg',  position: 2 , status: 1,rotating_file: File.new("#{Rails.root}/app/assets/images/rotativas/imagen2.jpg"))
RotatingImage.create(name: 'Imagen3', file_name: '/assets/rotativas/imagen3.jpg',  position: 3 , status: 1,rotating_file: File.new("#{Rails.root}/app/assets/images/rotativas/imagen3.jpg"))
RotatingImage.create(name: 'Imagen4', file_name: '/assets/rotativas/imagen4.jpg',  position: 4 , status: 1,rotating_file: File.new("#{Rails.root}/app/assets/images/rotativas/imagen4.jpg"))
