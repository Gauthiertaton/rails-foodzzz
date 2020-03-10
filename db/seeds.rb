# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
puts "🧹Cleaning Users"
Restaurant.destroy_all
puts "🧹Cleaning Restaurants"
Menu.destroy_all
puts "🧹Cleaning Menus"
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
puts 'Creating menus 🍔'
# mcdo
menu_1 = Menu.create!(name: "LE TENNESSEE BBQ & SMOKY CHEDDAR",description: 'une tranche de cheddar fumé au bois de chêne, deux tranches de long bacon fumé au bois de hêtre, un steak haché de viande charolaise', restaurant_id: 1, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_2 = Menu.create!(name: "LE McWRAP™ VEGGIE",description: 'Deux palets panés aux légumes, emmental français , une sauce onctueuse, des oignons frits, des rondelles de tomates, de la salade, le tout enveloppé dans une galette de blé', restaurant_id: 1, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_3 = Menu.create!(name: "LE 280™ BACON",description: 'un pain ciabatta cuit sur pierre , un duo de cheddar, emmental fondus, un steak haché bœuf, trois tranches de bacon fumé au bois de hêtre, des oignons frais', restaurant_id: 1, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
# pita pit
menu_4 = Menu.create!(name: "Poulet caesar",description: 'Blanc de poulet, bacon & parmesan', restaurant_id: 2, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_5 = Menu.create!(name: "Poulet souvlaki",description: 'Haut de cuisse de poulet & sa sauce maison', restaurant_id: 2, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_6 = Menu.create!(name: "Ranch",description: 'Bœuf & poulet épicé mariné', restaurant_id: 2, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
# suppli factory
menu_7 = Menu.create!(name: "LE SUPPLI",description: 'Une petite boule de risotto tomaté avec du parmesan, du basilic frais, un émincé carotte – oignon, un coeur fondant de mozzarella « Di Bufala », le tout enrobé de chapelure croustillante.', restaurant_id: 3, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_8 = Menu.create!(name: "LES ARANCINI",description: 'l’arancini est un cône croustillant, garni avec 6 recettes au choix, enrobé de riz nature et moelleux. 6 garnitures avec mise à jour hebdomadaire de l’Hebdo et du Fish', restaurant_id: 3, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_9 = Menu.create!(name: "FERMIER",description: 'Béchamel aux 3 fromages, fourme d’Ambert, comté et parmesan', restaurant_id: 3, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
# SaladBar
menu_10 = Menu.create!(name: "LA PLANCHA",description: 'Plat chaud cuit au bouillon à la plancha composé d’1 portion de protéine au choix & accompagnements à volonté ', restaurant_id: 4, vegetarien: true, vegan: false, sans_gluten: false, halal: true)
menu_11 = Menu.create!(name: "Émincés végétariens",description: 'A base de blé et de soja, ils sont légèrement relevés au gingembre et aux piments', restaurant_id: 4, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_12 = Menu.create!(name: "Salade forestière",description: 'Mélange de saison à base de boulgour et seigle aux cèpes assaisonné aux herbes', restaurant_id: 4, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
# big fernand
menu_13 = Menu.create!(name: "Le Bartholomé",description: 'Raclette des Alpes au lait cru Poitrine de porc fumée Oignons confits – Ciboulette Sauce BB Fernand', restaurant_id: 5, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_14 = Menu.create!(name: "Le big Fernand",description: 'Tomme de Savoie au lait cru Tomates séchées Persil plat Sauce Tata Fernande', restaurant_id: 5, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_15 = Menu.create!(name: "Le Lucien",description: 'Gros champignon de Paname Tomme de Savoie au lait cru Tomates séchées Oignons confits – Ciboulette Sauce Tata Fernande', restaurant_id: 5, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
# pokawa
menu_16 = Menu.create!(name: "Lover Bowl",description: 'Riz brun, ceviche de daurade mariné au lait de coco et citron vert, betterave chiogga, avocat, edamame, graines germées, grenade', restaurant_id: 6, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_17 = Menu.create!(name: "Chirashi Hawaien",description: 'Riz, saumon frais dEcosse, avocat, mangue ou ananas, graines de sésame', restaurant_id: 6, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_18 = Menu.create!(name: "Falafel Bio",description: 'Base au choix, poulet, rôti, mangue ou ananas, radis, concombre, chou rouge, avocat, edamame, graines de sésame', restaurant_id: 6, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
# Subway
menu_19 = Menu.create!(name: "Beef Barbacoa",description: 'Une délicieuse recette de tendres morceaux de bœuf effiloché cuit dans son jus, relevé au paprika, poivre, ail, oignons et cumin', restaurant_id: 7, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_20 = Menu.create!(name: "Veggie Quinoa Kale",description: 'Les galettes de Quinoa Kale sont composées de chou kale, de poivrons rouges et de quinoa', restaurant_id: 7, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_21 = Menu.create!(name: "Bœuf Pastrami",description: ' le Sub Pastrami. Ce sandwich est délicieux chaud accompagné de cornichons et de moutarde à lAméricaine', restaurant_id: 7, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
# fresh borrito
menu_22 = Menu.create!(name: "Burrito Largo",description: '1 viande au choix, 1 base au choix, 2 légumes au choix, 3 sauces au choix, et 6 ingrédients au choix', restaurant_id: 8, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
menu_23 = Menu.create!(name: "Burrito El Torrero Largo",description: 'Riz, bœuf, haricots rouges, crème fraîche, maïs, tomate bio et sauce cheddar', restaurant_id: 8, vegetarien: false, vegan: false, sans_gluten: true, halal: true)
menu_24 = Menu.create!(name: "Burrito Classico",description: '1 Burrito classico, 1 viande au choix, 1 base au choix, 2 légumes au choix, 3 sauces au choix, et 6 ingrédients au choix', restaurant_id: 8, vegetarien: false, vegan: false, sans_gluten: false, halal: false)
# eat salade
menu_25 = Menu.create!(name: "La 4",description: '1 base, 4 ingrédients, 1 sauce', restaurant_id: 9, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_26 = Menu.create!(name: "La 6",description: '1 base, 6 ingrédients, 1 sauce', restaurant_id: 9, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_27 = Menu.create!(name: "Petit velouté d'asperge",description: 'velouté, asperge, poivre et pointe de crème fraîche', restaurant_id: 9, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
# o tacos
menu_28 = Menu.create!(name: "Le BBQ M",description: 'Tortilla, nuggets, mozzarella, sauce barbecue, frites et sauce fromagère', restaurant_id: 10, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_29 = Menu.create!(name: "Le Fromager M",description: 'Tortilla, poulet, chèvre, Boursin, frites et sauce fromagère', restaurant_id: 10, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
menu_30 = Menu.create!(name: "O'Tenders XL",description: 'Tortilla, tenders avec de la sauce algérienne et gratiné au cheddar', restaurant_id: 10, vegetarien: false, vegan: false, sans_gluten: false, halal: true)
# bagel corner
menu_31 = Menu.create!(name: "L’ORIGINEL",description: 'cream cheese ciboulette, saumon fumé', restaurant_id: 11, vegetarien: true, vegan: false, sans_gluten: true, halal: true)
menu_32 = Menu.create!(name: "LE NORDIQUE",description: 'cream cheese ciboulette, avocat, saumon fumé, jeunes pousses, tomates cerises, sauce citron aneth', restaurant_id: 11, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_33 = Menu.create!(name: "LA VEGGIE",description: 'Jeunes pousses, avocat, parmesan, concombre, tomates cerises, tartare de courgette, vinaigrette new-yorkaise, croûtons de bage', restaurant_id: 11, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
# Sushi shop
menu_34 = Menu.create!(name: "Satay Sushi",description: 'crevette, sauce à la cacahuète et noix de coco, le tout relevé par la fraicheur d’un zeste de citron vert et de noix de coco râpée', restaurant_id: 12, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_35 = Menu.create!(name: "Saumon tsukudani",description: 'Sauce tsukudani, algue nori et sauce soja', restaurant_id: 12, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
menu_36 = Menu.create!(name: "Maki carotte",description: 'Carotte cuite et crue, coriandre, mayonnaise aux agrumes', restaurant_id: 12, vegetarien: true, vegan: true, sans_gluten: true, halal: true)
