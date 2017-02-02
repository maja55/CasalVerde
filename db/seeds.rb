Content.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.delete_all

photo1 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406235/Casalverde/index_photo_1.jpg")
photo2 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406220/Casalverde/index_photo_2.jpg")
photo3 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406237/Casalverde/index_photo_3.jpg")
photo4 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406222/Casalverde/index_photo_4.jpg")
photo5 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406227/Casalverde/index_photo_5.jpg")
photo6 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406223/Casalverde/index_photo_6.jpg")

header = Content.create(name: "Header", paragraph: "Tranquility, natural beauty, privacy in the heart of the famous Chianti region in Tuscany")

villa_description_short = Content.create(name: "Villa short description", paragraph: "Our lovely family villa, located within walking distance from Tregole in the famous wine region of Chianti Classico, has five spacious bedrooms, three bathrooms and a large swimming pool.")

villa_description_long = Content.create(name: "Villa long description", paragraph: "Our lovely family villa, located within walking distance from Tregole in the famous wine region of Chianti Classico, has five spacious bedrooms and three bathrooms. The villa is centrally located between the vineyards, olive groves and woods that make staying in an area with lots of privacy, tranquility and natural beauty. Tregole itself is a small hamlet with no shops but the nearby towns such as Castellina in Chianti, Siena and Florence are easily reached by car or bicycle.")

outdoor_features = Content.create(name: "Outdoor features", paragraph: "There is an oasis of calm and the area is safe for children. In the garden is a large swimming pool, children's playground, several terraces with sun and shade and there is a beautiful view! If you wish to dine together, you can use the pizza oven or barbecue to prepare delicious dishes from the local area, then you can uitserveren long tables. The neighbors, Brancaia and Fonterutoli, sell one of the best wines of Italy, which will probably fit in well with the self-cooked dinner. This luxurious venue can accommodate up to 16 people and includes many features to make but also facilitate the stay a lot more enjoyable.")

activities = Content.create(name: "Outdoor activities", paragraph: "When it comes to cycling, this area is perfect: beautiful roads, alternating climbs and beautiful scenery combined with historic villages and towns.")

distances = Content.create(name: "Distances", paragraph: "Villa is 500m from Tregole, Castellina in Chianti (including supermarket,restaurants, bars, doctor, pharmacy, church) is 3km away, San Gimignano 22km, Siena 24km and Florence 35km.")

indoor_amentities = Content.create(name: "Indoor Amentities", paragraph:"Private pool (12.5 x 4m, depth: 0.8m-2m) \n Internet \n Pizza oven \n Barbeque \n A dishwasher \n Washing machine \n Library \n Playground \n Table tennis \n Boules \n Hammock \n Mountain Bikes")

outdoor_amentities = Content.create(name: "Outdoor Amentities", paragraph: " Pool 12.5 x 4 meters with sun loungers \n Children playground (swing and slide) \n Trampoline (buried) \n Table tennis \nmTwo mountain bikes (m / f) \n Hammock \n Bowls \n Arcade with Pizza oven and barbecue and long dining table with chairs.")

living_room = Content.create(name: "Living room", paragraph: "TV with satellite dish (Dutch channels) \n DVD player \n Bose sound system \n Library \n two benches \n Armchair \n soapstone Stove \n dining table \n WiFi")

kitchen = Content.create(name: "Kitchen", paragraph: "dining table \n fridge with freezer \n dishwasher \n gas stove with oven \n cutlery, plates, cups and utensils \n coffee machines Senseo & Nespresso \n kettle \n herbs from local growers")

scullery = Content.create(name: "Scullery", paragraph: "fridge with freezer \n induction cooker \n cutlery, plates, cups and utensils")

bedroom1 = Content.create(name: "Bedroom 1", paragraph: "Double bed bla bla")

bedroom2 = Content.create(name: "Bedroom 2", paragraph: "Double bed bla bla")

bedroom3 = Content.create(name: "Bedroom 3", paragraph: "Double bed bla bla")

bedroom4 = Content.create(name: "Bedroom 4", paragraph: "Double bed bla bla")

bedroom5 = Content.create(name: "Bedroom 5", paragraph: "Double bed bla bla")

bathrooms = Content.create(name: "Bathrooms", paragraph: "Two bathrooms upstairs with: Shower cubicles washbasins toilets Towels. Double bathroom downstairs: two shower stalls Two toilets double sink Towels")

terraces = Content.create(name: "Terraces", paragraph: "Terrace 1: Accessible from the kitchen, Garden furniture with cushions, Parasol, firepot. Terrace 2: Barbecue, Furniture, Terrace 3: Furniture, shady")

surroundings = Content.create(name: "Surroundings", paragraph: "Tuscany need be hardly introduced. Millions of tourists annually visit of Italy's most traditional region with its monumental cities Firenze (Florence), Siena, Pisa, Lucca and Arezzo. \n Cas'al verde Tregole located near the village, 3 km from Castellina in Chianti. In the latter town are available all facilities such as: doctor, pharmacy, supermarket, restaurants, church, police, etc ..The immediate area is ideal for (long and adventurous) walks include nearby Etruscan tombs. \n Also lends the Tuscan area is ideal for cycling mountain biking to road bike. More information for cyclists see the following link. \n Tregole is located 13 kilometers north of Siena and 35 kilometers south of Florence in the famous wine region of Chianti Classico. \n Outside the abovementioned cities are also San Gimignano, Volterra, Poggibonsi, Radda, Greve and other famous places in the immediate vicinity.")
