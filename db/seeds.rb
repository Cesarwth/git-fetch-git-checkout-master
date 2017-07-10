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
# ["id", "address", "phone", "email", "status", "created_at", "updated_at"]
Contact.create(address: 'Test Address', phone: '1234567890', email: 'test@email.com')