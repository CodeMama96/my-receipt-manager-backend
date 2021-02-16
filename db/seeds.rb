# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coffee = Category.create(name: 'coffee')
food = Category.create(name: 'food')
clothing = Category.create(name: 'clothing')
credit_card = Category.create(name: 'credit_card')
utility = Category.create(name: 'utility')


Item.create([
    {name: 'Starbucks', date: '2/11/2021', price: 4.95, description: 'none', category: coffee},
    {name: 'Thai Takeout', date: '2/05/2021', price: 14.99, description: 'food' , category: food},
    {name: 'Workout pants', date: '2/17/2021', price: 24.99, description: 'clothing', category: clothing},
    {name: 'Aldi', date: '2/08/2021', price: 19.80, description: 'none', category: food},

    {name: 'Runaway', date: '2/23/2021', price: 255.00, description: 'none', category: credit_card},
    {name: 'Cell-Phone', date: '2/12/2021', price: 71.00, description: 'none', category: utility},
    {name: 'Apple Credit Union', date: '2/25/2021', price: 135.00, description: 'none', category: credit_card}
])