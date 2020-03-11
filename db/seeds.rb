# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'pry-byebug'
puts "🧹Cleaning Users"
User.destroy_all

puts "🧹Cleaning Restaurants"
Restaurant.destroy_all

puts "🧹Cleaning Menus"
Menu.destroy_all

puts 'Creating restaurants 🍽️ '

restaurant_1 = Restaurant.create!(name: "Mc Donald's",address: '3 Rue de Gorges, 44000 Nantes', category: 'burger', stock: 0)
resto_file_1 = File.open(Rails.root.join('fixtures/resto/resto_1.jpg'))
# binding.pry
restaurant_1.photo.attach(io: resto_file_1, filename: 'resto_1.jpg', content_type: 'image/jpg')
logo_file_1 = File.open(Rails.root.join('fixtures/logo/mcdo.jpg'))
restaurant_1.logo.attach(io: logo_file_1, filename: 'mcdo.jpg', content_type: 'image/jpg')

restaurant_2 = Restaurant.create!(name: "Pita Pit",address: '29 Rue de Verdun, 44000 Nantes', category: 'sandwich', stock: 0)
resto_file_2 = File.open(Rails.root.join('fixtures/resto/resto_2.jpg'))
restaurant_2.photo.attach(io: resto_file_2, filename: 'resto_2.jpg', content_type: 'image/jpg')
logo_file_2 = File.open(Rails.root.join('fixtures/logo/pita_pit.jpg'))
restaurant_2.logo.attach(io: logo_file_2, filename: 'pita_pit.jpg', content_type: 'image/jpg')

restaurant_3 = Restaurant.create!(name: "Supply Factory",address: '1 Rue de l Arche Sèche, 44000 Nantes', category: 'italien', stock: 0)
resto_file_3 = File.open(Rails.root.join('fixtures/resto/resto_3.jpg'))
restaurant_3.photo.attach(io: resto_file_3, filename: 'resto_3.jpg', content_type: 'image/jpg')
logo_file_3 = File.open(Rails.root.join('fixtures/logo/supply-factory.jpg'))
restaurant_3.logo.attach(io: logo_file_3, filename: 'supply-factory.jpg', content_type: 'image/jpg')

restaurant_4 = Restaurant.create!(name: "SaladBar",address: '12 Rue de Jemmapes, 44200 Nantes', category: 'salades', stock: 0)
resto_file_4 = File.open(Rails.root.join('fixtures/resto/resto_4.jpg'))
restaurant_4.photo.attach(io: resto_file_4, filename: 'resto_4.jpg', content_type: 'image/jpg')
logo_file_4 = File.open(Rails.root.join('fixtures/logo/salad_bar.jpg'))
restaurant_4.logo.attach(io: logo_file_4, filename: 'salad_bar.jpg', content_type: 'image/jpg')

restaurant_5 = Restaurant.create!(name: "Big Fernand",address: '37 Rue des Halles, 44000 Nantes', category: 'burger', stock: 0)
resto_file_5 = File.open(Rails.root.join('fixtures/resto/resto_5.jpeg'))
restaurant_5.photo.attach(io: resto_file_5, filename: 'resto_5.jpeg', content_type: 'image/jpeg')
logo_file_5 = File.open(Rails.root.join('fixtures/logo/big_fernand.jpg'))
restaurant_5.logo.attach(io: logo_file_5, filename: 'big_fernand.jpg', content_type: 'image/jpg')

restaurant_6 = Restaurant.create!(name: "Pokawa",address: '1 Rue Mercœur, 44000 Nantes', category: 'bowls', stock: 0)
resto_file_6 = File.open(Rails.root.join('fixtures/resto/resto_6.jpg'))
restaurant_6.photo.attach(io: resto_file_6, filename: 'resto_6.jpg', content_type: 'image/jpg')
logo_file_6 = File.open(Rails.root.join('fixtures/logo/pokawa.jpg'))
restaurant_6.logo.attach(io: logo_file_6, filename: 'pokawa.jpg', content_type: 'image/jpg')

restaurant_7 = Restaurant.create!(name: "Subway",address: '23 Rue de la Fosse, 44000 Nantes', category: 'sandwich', stock: 0)
resto_file_7 = File.open(Rails.root.join('fixtures/resto/resto_7.jpg'))
restaurant_7.photo.attach(io: resto_file_7, filename: 'resto_7.jpg', content_type: 'image/jpg')
logo_file_7 = File.open(Rails.root.join('fixtures/logo/subway.jpg'))
restaurant_7.logo.attach(io: logo_file_7, filename: 'subway.jpg', content_type: 'image/jpg')

restaurant_8 = Restaurant.create!(name: "Fresh Burrito",address: '5 Rue de Gorges, 44000 Nantes', category: 'burrito', stock: 0)
resto_file_8 = File.open(Rails.root.join('fixtures/resto/resto_8.jpg'))
restaurant_8.photo.attach(io: resto_file_8, filename: 'resto_8.jpg', content_type: 'image/jpg')
logo_file_8 = File.open(Rails.root.join('fixtures/logo/fresh_burritos.jpg'))
restaurant_8.logo.attach(io: logo_file_8, filename: 'fresh_burritos.jpg', content_type: 'image/jpg')

restaurant_9 = Restaurant.create!(name: "Eat Salad",address: '19 BIS Rue Scribe, 44000 Nantes', category: 'salades', stock: 0)
resto_file_9 = File.open(Rails.root.join('fixtures/resto/resto_9.jpeg'))
restaurant_9.photo.attach(io: resto_file_9, filename: 'resto_9.jpeg', content_type: 'image/jpeg')
logo_file_9 = File.open(Rails.root.join('fixtures/logo/eat_salad.jpg'))
restaurant_9.logo.attach(io: logo_file_9, filename: 'eat_salad.jpg', content_type: 'image/jpg')

restaurant_10 = Restaurant.create!(name: "O'Tacos",address: '2 Cours Olivier de Clisson, 44000 Nantes', category: 'tacos', stock: 0)
resto_file_10 = File.open(Rails.root.join('fixtures/resto/resto_10.png'))
restaurant_10.photo.attach(io: resto_file_10, filename: 'resto_10.png', content_type: 'image/png')
logo_file_10 = File.open(Rails.root.join('fixtures/logo/o_tacos.jpg'))
restaurant_10.logo.attach(io: logo_file_10, filename: 'o_tacos.jpg', content_type: 'image/jpg')

restaurant_11 = Restaurant.create!(name: "Bagel Corner",address: '3 Rue des Halles, 44000 Nantes', category: 'bagels', stock: 0)
resto_file_11 = File.open(Rails.root.join('fixtures/resto/resto_11.jpg'))
restaurant_11.photo.attach(io: resto_file_11, filename: 'resto_11.jpg', content_type: 'image/jpg')
logo_file_11 = File.open(Rails.root.join('fixtures/logo/bagel_corner.jpg'))
restaurant_11.logo.attach(io: logo_file_11, filename: 'bagel_corner.jpg', content_type: 'image/jpg')

restaurant_12 = Restaurant.create!(name: "Sushi Shop",address: '13 Rue de Strasbourg, 44000 Nantes', category: 'japonais', stock: 0)
resto_file_12 = File.open(Rails.root.join('fixtures/resto/resto_12.jpeg'))
restaurant_12.photo.attach(io: resto_file_12, filename: 'resto_12.jpeg', content_type: 'image/jpeg')
logo_file_12 = File.open(Rails.root.join('fixtures/logo/sushi_shop.jpg'))
restaurant_12.logo.attach(io: logo_file_12, filename: 'sushi_shop.jpg', content_type: 'image/jpg')

puts 'Creating users 🦹 '

user_1 = User.create!(first_name: 'Marion',last_name: 'Henrio',email: "marion.henrio@gmail.com",id: 1, restaurant: restaurant_9, menu_released: false, password: 'secret')
user_2 = User.create!(first_name: 'Gauthier',last_name: 'Taton',email: "gauthier_taton@yahoo.fr",id: 2, restaurant: restaurant_12, menu_released: false, password: 'secret')
user_3 = User.create!(first_name: 'Armel',last_name: 'Ahehehinnou',email: "ahehehinnouarmel8@gmail.com",id: 3, restaurant: restaurant_7, menu_released: false, password: 'secret')
user_4 = User.create!(first_name: 'Justine',last_name: 'Barbault',email: "justinehsd@gmail.com",id: 4, restaurant: restaurant_6, menu_released: false, password: 'secret')

puts 'Creating menus 🍔'
# mcdo
menu_1 = Menu.create!(name: "LE TENNESSEE BBQ & SMOKY CHEDDAR",description: 'une tranche de cheddar fumé au bois de chêne, deux tranches de long bacon fumé au bois de hêtre, un steak haché de viande charolaise', restaurant: restaurant_1, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_file_1 = File.open(Rails.root.join('fixtures/menu/menu_1.jpg'))
menu_1.photo.attach(io: menu_file_1, filename: 'menu_1.jpg', content_type: 'image/jpg')

menu_2 = Menu.create!(name: "LE McWRAP™ VEGGIE",description: 'Deux palets panés aux légumes, emmental français , une sauce onctueuse, des oignons frits, des rondelles de tomates, de la salade, le tout enveloppé dans une galette de blé', restaurant: restaurant_1, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_2 = File.open(Rails.root.join('fixtures/menu/menu_2.jpg'))
menu_2.photo.attach(io: menu_file_2, filename: 'menu_2.jpg', content_type: 'image/jpg')

menu_3 = Menu.create!(name: "LE 280™ BACON",description: 'un pain ciabatta cuit sur pierre , un duo de cheddar, emmental fondus, un steak haché bœuf, trois tranches de bacon fumé au bois de hêtre, des oignons frais', restaurant: restaurant_1, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_file_3 = File.open(Rails.root.join('fixtures/menu/menu_3.png'))
menu_3.photo.attach(io: menu_file_3, filename: 'menu_3.png', content_type: 'image/png')

# pita pit
menu_4 = Menu.create!(name: "Poulet caesar",description: 'Blanc de poulet, bacon & parmesan', restaurant: restaurant_2, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_file_4 = File.open(Rails.root.join('fixtures/menu/menu_4.jpeg'))
menu_4.photo.attach(io: menu_file_4, filename: 'menu_4.jpeg', content_type: 'image/jpeg')

menu_5 = Menu.create!(name: "Poulet souvlaki",description: 'Haut de cuisse de poulet & sa sauce maison', restaurant: restaurant_2, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_file_5 = File.open(Rails.root.join('fixtures/menu/menu_5.jpeg'))
menu_5.photo.attach(io: menu_file_5, filename: 'menu_5.jpeg', content_type: 'image/jpeg')

menu_6 = Menu.create!(name: "Ranch",description: 'Bœuf & poulet épicé mariné', restaurant: restaurant_2, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_6 = File.open(Rails.root.join('fixtures/menu/menu_6.jpeg'))
menu_6.photo.attach(io: menu_file_6, filename: 'menu_6.jpeg', content_type: 'image/jpeg')

# suppli factory
menu_7 = Menu.create!(name: "LE SUPPLI",description: 'Une petite boule de risotto tomaté avec du parmesan, du basilic frais, un émincé carotte – oignon, un coeur fondant de mozzarella « Di Bufala », le tout enrobé de chapelure croustillante.', restaurant: restaurant_3, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_7 = File.open(Rails.root.join('fixtures/menu/menu_7.jpeg'))
menu_7.photo.attach(io: menu_file_7, filename: 'menu_7.jpeg', content_type: 'image/jpeg')

menu_8 = Menu.create!(name: "LES ARANCINI",description: 'l’arancini est un cône croustillant, garni avec 6 recettes au choix, enrobé de riz nature et moelleux. 6 garnitures avec mise à jour hebdomadaire de l’Hebdo et du Fish', restaurant: restaurant_3, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_file_8 = File.open(Rails.root.join('fixtures/menu/menu_8.jpeg'))
menu_8.photo.attach(io: menu_file_8, filename: 'menu_8.jpeg', content_type: 'image/jpeg')

menu_9 = Menu.create!(name: "FERMIER",description: 'Béchamel aux 3 fromages, fourme d’Ambert, comté et parmesan', restaurant: restaurant_3, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_file_9 = File.open(Rails.root.join('fixtures/menu/menu_9.jpeg'))
menu_9.photo.attach(io: menu_file_9, filename: 'menu_9.jpeg', content_type: 'image/jpeg')

# SaladBar
menu_10 = Menu.create!(name: "LA PLANCHA",description: 'Plat chaud cuit au bouillon à la plancha composé d’1 portion de protéine au choix & accompagnements à volonté ', restaurant: restaurant_4, vegetarien: true, vegan: false, sans_gluten: false, halal: true)
menu_file_10 = File.open(Rails.root.join('fixtures/menu/menu_10.jpg'))
menu_10.photo.attach(io: menu_file_10, filename: 'menu_10.jpg', content_type: 'image/jpg')

menu_11 = Menu.create!(name: "Émincés végétariens",description: 'A base de blé et de soja, ils sont légèrement relevés au gingembre et aux piments', restaurant: restaurant_4, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_11 = File.open(Rails.root.join('fixtures/menu/menu_11.png'))
menu_11.photo.attach(io: menu_file_11, filename: 'menu_11.png', content_type: 'image/png')

menu_12 = Menu.create!(name: "Salade forestière",description: 'Mélange de saison à base de boulgour et seigle aux cèpes assaisonné aux herbes', restaurant: restaurant_4, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_12 = File.open(Rails.root.join('fixtures/menu/menu_12.jpeg'))
menu_12.photo.attach(io: menu_file_12, filename: 'menu_12.jpeg', content_type: 'image/jpeg')

# big fernand
menu_13 = Menu.create!(name: "Le Bartholomé",description: 'Raclette des Alpes au lait cru Poitrine de porc fumée Oignons confits – Ciboulette Sauce BB Fernand', restaurant: restaurant_5, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_file_13 = File.open(Rails.root.join('fixtures/menu/menu_13.jpg'))
menu_13.photo.attach(io: menu_file_13, filename: 'menu_13.jpg', content_type: 'image/jpg')

menu_14 = Menu.create!(name: "Le big Fernand",description: 'Tomme de Savoie au lait cru Tomates séchées Persil plat Sauce Tata Fernande', restaurant: restaurant_5, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_14 = File.open(Rails.root.join('fixtures/menu/menu_14.jpeg'))
menu_14.photo.attach(io: menu_file_14, filename: 'menu_14.jpeg', content_type: 'image/jpeg')

menu_15 = Menu.create!(name: "Le Lucien",description: 'Gros champignon de Paname Tomme de Savoie au lait cru Tomates séchées Oignons confits – Ciboulette Sauce Tata Fernande', restaurant: restaurant_5, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_15 = File.open(Rails.root.join('fixtures/menu/menu_15.jpeg'))
menu_15.photo.attach(io: menu_file_15, filename: 'menu_15.jpeg', content_type: 'image/jpeg')

# pokawa
menu_16 = Menu.create!(name: "Lover Bowl",description: 'Riz brun, ceviche de daurade mariné au lait de coco et citron vert, betterave chiogga, avocat, edamame, graines germées, grenade', restaurant: restaurant_6, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_16 = File.open(Rails.root.join('fixtures/menu/menu_16.jpg'))
menu_16.photo.attach(io: menu_file_16, filename: 'menu_16.jpg', content_type: 'image/jpg')

menu_17 = Menu.create!(name: "Chirashi Hawaien",description: 'Riz, saumon frais dEcosse, avocat, mangue ou ananas, graines de sésame', restaurant: restaurant_6, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_17 = File.open(Rails.root.join('fixtures/menu/menu_17.jpg'))
menu_17.photo.attach(io: menu_file_17, filename: 'menu_17.jpg', content_type: 'image/jpg')

menu_18 = Menu.create!(name: "Falafel Bio",description: 'Base au choix, poulet, rôti, mangue ou ananas, radis, concombre, chou rouge, avocat, edamame, graines de sésame', restaurant: restaurant_6, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_file_18 = File.open(Rails.root.join('fixtures/menu/menu_18.jpeg'))
menu_18.photo.attach(io: menu_file_18, filename: 'menu_18.jpeg', content_type: 'image/jpeg')

# Subway
menu_19 = Menu.create!(name: "Beef Barbacoa",description: 'Une délicieuse recette de tendres morceaux de bœuf effiloché cuit dans son jus, relevé au paprika, poivre, ail, oignons et cumin', restaurant: restaurant_7, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_19 = File.open(Rails.root.join('fixtures/menu/menu_19.jpg'))
menu_19.photo.attach(io: menu_file_19, filename: 'menu_19.jpg', content_type: 'image/jpg')

menu_20 = Menu.create!(name: "Veggie Quinoa Kale",description: 'Les galettes de Quinoa Kale sont composées de chou kale, de poivrons rouges et de quinoa', restaurant: restaurant_7, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_20 = File.open(Rails.root.join('fixtures/menu/menu_20.jpg'))
menu_20.photo.attach(io: menu_file_20, filename: 'menu_20.jpg', content_type: 'image/jpg')

menu_21 = Menu.create!(name: "Bœuf Pastrami",description: ' le Sub Pastrami. Ce sandwich est délicieux chaud accompagné de cornichons et de moutarde à lAméricaine', restaurant: restaurant_7, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_21 = File.open(Rails.root.join('fixtures/menu/menu_21.jpg'))
menu_21.photo.attach(io: menu_file_21, filename: 'menu_21.jpg', content_type: 'image/jpg')

# fresh borrito
menu_22 = Menu.create!(name: "Burrito Largo",description: '1 viande au choix, 1 base au choix, 2 légumes au choix, 3 sauces au choix, et 6 ingrédients au choix', restaurant: restaurant_8, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_file_22 = File.open(Rails.root.join('fixtures/menu/menu_22.jpeg'))
menu_22.photo.attach(io: menu_file_22, filename: 'menu_22.jpeg', content_type: 'image/jpeg')

menu_23 = Menu.create!(name: "Burrito El Torrero Largo",description: 'Riz, bœuf, haricots rouges, crème fraîche, maïs, tomate bio et sauce cheddar', restaurant: restaurant_8, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_file_23 = File.open(Rails.root.join('fixtures/menu/menu_23.jpeg'))
menu_23.photo.attach(io: menu_file_23, filename: 'menu_23.jpeg', content_type: 'image/jpeg')

menu_24 = Menu.create!(name: "Burrito Classico",description: '1 Burrito classico, 1 viande au choix, 1 base au choix, 2 légumes au choix, 3 sauces au choix, et 6 ingrédients au choix', restaurant: restaurant_8, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_file_24 = File.open(Rails.root.join('fixtures/menu/menu_24.jpeg'))
menu_24.photo.attach(io: menu_file_24, filename: 'menu_24.jpeg', content_type: 'image/jpeg')

# eat salade
menu_25 = Menu.create!(name: "La 4",description: '1 base, 4 ingrédients, 1 sauce', restaurant: restaurant_9, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_25 = File.open(Rails.root.join('fixtures/menu/menu_25.jpeg'))
menu_25.photo.attach(io: menu_file_25, filename: 'menu_25.jpeg', content_type: 'image/jpeg')

menu_26 = Menu.create!(name: "La 6",description: '1 base, 6 ingrédients, 1 sauce', restaurant: restaurant_9, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_26 = File.open(Rails.root.join('fixtures/menu/menu_26.jpeg'))
menu_26.photo.attach(io: menu_file_26, filename: 'menu_26.jpeg', content_type: 'image/jpeg')

menu_27 = Menu.create!(name: "Petit velouté d'asperge",description: 'velouté, asperge, poivre et pointe de crème fraîche', restaurant: restaurant_9, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_27 = File.open(Rails.root.join('fixtures/menu/menu_27.jpeg'))
menu_27.photo.attach(io: menu_file_27, filename: 'menu_27.jpeg', content_type: 'image/jpeg')

# o tacos
menu_28 = Menu.create!(name: "Le BBQ M",description: 'Tortilla, nuggets, mozzarella, sauce barbecue, frites et sauce fromagère', restaurant: restaurant_10, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_28 = File.open(Rails.root.join('fixtures/menu/menu_28.jpeg'))
menu_28.photo.attach(io: menu_file_28, filename: 'menu_28.jpeg', content_type: 'image/jpeg')

menu_29 = Menu.create!(name: "Le Fromager M",description: 'Tortilla, poulet, chèvre, Boursin, frites et sauce fromagère', restaurant: restaurant_10, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_29 = File.open(Rails.root.join('fixtures/menu/menu_29.jpeg'))
menu_29.photo.attach(io: menu_file_29, filename: 'menu_29.jpeg', content_type: 'image/jpeg')

menu_30 = Menu.create!(name: "O'Tenders XL",description: 'Tortilla, tenders avec de la sauce algérienne et gratiné au cheddar', restaurant: restaurant_10, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_file_30 = File.open(Rails.root.join('fixtures/menu/menu_30.jpeg'))
menu_30.photo.attach(io: menu_file_30, filename: 'menu_30.jpeg', content_type: 'image/jpeg')

# bagel corner
menu_31 = Menu.create!(name: "L’ORIGINEL",description: 'cream cheese ciboulette, saumon fumé', restaurant: restaurant_11, vegetarien: true, vegan: false, sans_gluten: true, halal: true)
menu_file_31 = File.open(Rails.root.join('fixtures/menu/menu_31.jpeg'))
menu_31.photo.attach(io: menu_file_31, filename: 'menu_31.jpeg', content_type: 'image/jpeg')

menu_32 = Menu.create!(name: "LE NORDIQUE",description: 'cream cheese ciboulette, avocat, saumon fumé, jeunes pousses, tomates cerises, sauce citron aneth', restaurant: restaurant_11, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_32 = File.open(Rails.root.join('fixtures/menu/menu_32.jpeg'))
menu_32.photo.attach(io: menu_file_32, filename: 'menu_32.jpeg', content_type: 'image/jpeg')

menu_33 = Menu.create!(name: "LA VEGGIE",description: 'Jeunes pousses, avocat, parmesan, concombre, tomates cerises, tartare de courgette, vinaigrette new-yorkaise, croûtons de bage', restaurant: restaurant_11, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_33 = File.open(Rails.root.join('fixtures/menu/menu_33.jpeg'))
menu_33.photo.attach(io: menu_file_33, filename: 'menu_33.jpeg', content_type: 'image/jpeg')

# Sushi shop
menu_34 = Menu.create!(name: "Satay Sushi",description: 'crevette, sauce à la cacahuète et noix de coco, le tout relevé par la fraicheur d’un zeste de citron vert et de noix de coco râpée', restaurant: restaurant_12, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_34 = File.open(Rails.root.join('fixtures/menu/menu_34.jpeg'))
menu_34.photo.attach(io: menu_file_34, filename: 'menu_34.jpeg', content_type: 'image/jpeg')

menu_35 = Menu.create!(name: "Saumon tsukudani",description: 'Sauce tsukudani, algue nori et sauce soja', restaurant: restaurant_12, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_35 = File.open(Rails.root.join('fixtures/menu/menu_35.png'))
menu_35.photo.attach(io: menu_file_35, filename: 'menu_35.png', content_type: 'image/png')

menu_36 = Menu.create!(name: "Maki carotte",description: 'Carotte cuite et crue, coriandre, mayonnaise aux agrumes', restaurant: restaurant_12, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_file_36 = File.open(Rails.root.join('fixtures/menu/menu_36.jpeg'))
menu_36.photo.attach(io: menu_file_36, filename: 'menu_36.jpeg', content_type: 'image/jpeg')

puts "finish"

