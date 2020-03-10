
User.destroy_all
puts "🧹Cleaning Users"
Restaurant.destroy_all
puts "🧹Cleaning Restaurants"


puts 'Creating restaurants 🍽️ '

restaurant_1 = Restaurant.create!(name: "Mc Donald's",address: '3 Rue de Gorges, 44000 Nantes', category: 'burger', stock: 0)
restaurant_2 = Restaurant.create!(name: "Pita Pit",address: '29 Rue de Verdun, 44000 Nantes', category: 'sandwich', stock: 0)
restaurant_3 = Restaurant.create!(name: "Supply Factory",address: '1 Rue de l Arche Sèche, 44000 Nantes', category: 'italien', stock: 0)
restaurant_4 = Restaurant.create!(name: "SaladBar",address: '12 Rue de Jemmapes, 44200 Nantes', category: 'salades', stock: 0)
restaurant_5 = Restaurant.create!(name: "Big Fernand",address: '37 Rue des Halles, 44000 Nantes', category: 'burger', stock: 0)
restaurant_6 = Restaurant.create!(name: "Pokawa",address: '1 Rue Mercœur, 44000 Nantes', category: 'bowls', stock: 0)
restaurant_7 = Restaurant.create!(name: "Subway",address: '23 Rue de la Fosse, 44000 Nantes', category: 'sandwich', stock: 0)
restaurant_8 = Restaurant.create!(name: "Fresh Burrito",address: '5 Rue de Gorges, 44000 Nantes', category: 'burrito', stock: 0)
restaurant_9 = Restaurant.create!(name: "Eat Salad",address: '19 BIS Rue Scribe, 44000 Nantes', category: 'salades', stock: 0)
restaurant_10 = Restaurant.create!(name: "O'Tacos",address: '2 Cours Olivier de Clisson, 44000 Nantes', category: 'tacos', stock: 0)
restaurant_11 = Restaurant.create!(name: "Bagel Corner",address: '3 Rue des Halles, 44000 Nantes', category: 'bagels', stock: 0)
restaurant_12 = Restaurant.create!(name: "Sushi Shop",address: '13 Rue de Strasbourg, 44000 Nantes', category: 'japonais', stock: 0)


puts 'Creating users 🦹 '

user_1 = User.create!(first_name: 'Marion',last_name: 'Henrio',email: "marion.henrio@gmail.com",id: 1, restaurant_id: 6, menu_release: false)
user_2 = User.create!(first_name: 'Gauthier',last_name: 'Taton',email: "gauthier_taton@yahoo.fr",id: 2, restaurant_id: 5, menu_release: false)
user_3 = User.create!(first_name: 'Armel',last_name: 'Ahehehinnou',email: "ahehehinnouarmel8@gmail.com",id: 3, restaurant_id: 10, menu_release: false)
user_4 = User.create!(first_name: 'Justine',last_name: 'Barbault',email: "justinehsd@gmail.com",id: 4, restaurant_id: 1, menu_release: false)

