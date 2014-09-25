technology = Category.create(name: "Technology", picture: "/cat_img/technology.png")

sports = Category.create(name: "Sports", picture: "/cat_img/sports.png")

fashion = Category.create(name: "Fashion", picture: "/cat_img/fashion.png")

home  = Category.create(name: "Home", picture: "/cat_img/home.png")

pets = Category.create(name: "Pets", picture: "/cat_img/pets.png")

entertainment = Category.create(name: "Entertainment", picture: "/cat_img/entertainment.png")


lava_lamp = Product.create(name: "Electroplasma Lava Lamp", description: "This sweet lava lamp will give your giftee the ultimate in chill times.", price: 30, img_filepath: "/prod_img/lava_lamp.jpg")

lava_lamp.categories << home

art = Product.create(name: "Sweet Art", description: "This painting is perfect gift for someone who understands the meaning of being deep and artsy.", price: 80, img_filepath: "/prod_img/art.jpg")

art.categories << home

cat_necklace = Product.create(name: "Cat Necklace", description: "Take Precious with you, even when you have to leave her at home.", price: 20, img_filepath: "/prod_img/cat_necklace.jpg")

cat_necklace.categories << pets

pet_tags = Product.create(name: "Pet Tags", description: "Give Scruffy a little piece of flair with this elegant copper tag.", price: 15, img_filepath: "/prod_img/pet_tags.jpg")

pet_tags.categories << pets

food = Product.create(name: "The Hub", description: "A meal at the Hub is really all anyone wants.", price: 50, img_filepath: "/prod_img/food.jpg")

food.categories << entertainment

theater = Product.create(name: "The Chauncey Theater", description: "An evening of theater will give the recipient a magical escape from the autumn doldrums.", price: 50, img_filepath: "/prod_img/theatre.jpg")

theater.categories << entertainment