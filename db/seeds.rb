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

photo7 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406221/Casalverde/bathroom_1.jpg")
photo8 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406231/Casalverde/swimmingpool_1.jpg")
photo9 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/swimmingpool_2.jpg")
photo10 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/swimmingpool_3.jpg")
photo11 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/swimmingpool_4.jpg")
photo12 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406223/Casalverde/swimmingpool_5.jpg")
photo13 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406223/Casalverde/outside_1.jpg")
photo14 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406220/Casalverde/kitchen_1.jpg")
photo15 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406221/Casalverde/villa_1.jpg")
photo16 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406225/Casalverde/bedroom_1.jpg")
photo17 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406230/Casalverde/bedroom_2.jpg")
photo18 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406229/Casalverde/bedroom_3.jpg")
photo19 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406230/Casalverde/bathroom_2.jpg")
photo20 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406234/Casalverde/bedroom_4.jpg")
photo21 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406229/Casalverde/villa_2.jpg")
photo22 = Photo.create(remote_image_url:"http://res.cloudinary.com/mippet/image/upload/v1477406235/Casalverde/villa_3.jpg")




villa_description = Content.create(paragraph: "Villa description bla bla")
