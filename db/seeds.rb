# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

user1 = User.create!(name: 'John', email: 'john1@aa.io', password: 'password')
user2 = User.create!(name: 'Jimmy', email: 'jimmy2@aa.io', password: 'password')
user3 = User.create!(name: 'Kevin', email: 'kevin3@aa.io', password: 'password')
user4 = User.create!(name: 'Elliot', email: 'elliot4@aa.io', password: 'password')
user5 = User.create!(name: 'Jason', email: 'jason5@aa.io', password: 'password')
user6 = User.create!(name: 'Marc', email: 'marc6@aa.io', password: 'password')
user7 = User.create!(name: 'Spencer', email: 'spencer7@aa.io', password: 'password')
user8 = User.create!(name: 'Jesus', email: 'jesus8@aa.io', password: 'password')

