require 'rake'
require "sinatra/activerecord/rake"
require_relative 'lib/user_importer'
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc "populate the database with sample user data"
task "db:populate" do
  UserImporter.new.import

# ===== Categories =====
  
art = Category.create(name: "Artist", img_filepath: "/cat_img/art.png")
baby = Category.create(name: "Baby", img_filepath: "/cat_img/baby.png")
bicycle = Category.create(name: "Cyclist", img_filepath: "/cat_img/bicycle.png")
books = Category.create(name: "Book Worm", img_filepath: "/cat_img/books.png")
camera = Category.create(name: "Shutterbug", img_filepath: "/cat_img/camera.png")
car = Category.create(name: "Car Czar", img_filepath: "/cat_img/car.png")
coffee = Category.create(name: "Caffeine Addict", img_filepath: "/cat_img/coffee.png")
culture = Category.create(name: "Culture Icon", img_filepath: "/cat_img/culture.png")
design = Category.create(name: "Design Lover", img_filepath: "/cat_img/design.png")
entertainment = Category.create(name: "Entertainment", img_filepath: "/cat_img/entertainment.png")
fashion = Category.create(name: "Fashionista", img_filepath: "/cat_img/fashion.png")
fitness = Category.create(name: "Fitness Junkie", img_filepath: "/cat_img/exercise.png")
flower = Category.create(name: "Flower Power", img_filepath: "/cat_img/flower.png")
food = Category.create(name: "Foodie", img_filepath: "/cat_img/food.png")
music = Category.create(name: "Stereo", img_filepath: "/cat_img/headphone.png")
hiking = Category.create(name: "Outdoors", img_filepath: "/cat_img/hiking.png")
hipster = Category.create(name: "Hipster", img_filepath: "/cat_img/hipster.png")
home  = Category.create(name: "Home Body", img_filepath: "/cat_img/home.png")
instrument = Category.create(name: "Musician", img_filepath: "/cat_img/instruments.png")
jewelry = Category.create(name: "Bling", img_filepath: "/cat_img/diamond.png")
meat = Category.create(name: "Meat", img_filepath: "/cat_img/meat.png")
medic = Category.create(name: "Medical", img_filepath: "/cat_img/medic.png")
movies = Category.create(name: "Movie Buff", img_filepath: "/cat_img/movies.png")
natural = Category.create(name: "All Natural", img_filepath: "/cat_img/natural.png")
neat = Category.create(name: "Neat Freak", img_filepath: "/cat_img/neat.png")
party = Category.create(name: "Party Animal", img_filepath: "/cat_img/party.png")
pets = Category.create(name: "Pet Whisperer", img_filepath: "/cat_img/pets.png")
plant = Category.create(name: "Green Thumb", img_filepath: "/cat_img/plant.png")
retro = Category.create(name: "Retro Fanatic", img_filepath: "/cat_img/retro.png")
school = Category.create(name: "Scholar", img_filepath: "/cat_img/school.png")
sports = Category.create(name: "SportsFan", img_filepath: "/cat_img/sports.png")
technology = Category.create(name: "Techie", img_filepath: "/cat_img/technology.png")
travel = Category.create(name: "Globe Trotter", img_filepath: "/cat_img/airplane.png")
tv = Category.create(name: "Couch Warmer", img_filepath: "/cat_img/tv.png")
videogames = Category.create(name: "Gamer", img_filepath: "/cat_img/videogames.png")
weapons = Category.create(name: "Warrior", img_filepath: "/cat_img/weapons.png")
wine = Category.create(name: "Pre-gamer", img_filepath: "/cat_img/wine.png")

# ===== Product seed data =====
  chromecast = Product.create(
    name: 'Chrome Cast', 
    description: 'Google Chromecast HDMI Streaming Media Player',
    price: 34.64,
    img_filepath: "/img/chromecast.jpeg",
    url: "http://www.amazon.com/Google-Chromecast-Streaming-Media-Player/dp/B00DR0PDNE/ref=zg_bs_electronics_2"
  )
  chromecast.categories.push(technology, entertainment, movies, tv) 

  kindlepaperwhite = Product.create(
    name: 'Kindle Paperwhite', 
    description: 'Paperwhite Display, High Resolution, High Contrast, Built-in Light, Wi-Fi or Wi-Fi + Free 3G',
    price: "119.00",
    img_filepath: "/img/kindlepaperwhite.jpeg",
    url: "http://www.amazon.com/Kindle-Paperwhite-High-Resolution-Display-Built/dp/B00JG8GOWU/ref=zg_bs_electronics_4"
  )
  kindlepaperwhite.categories.push(technology, books, home)

  gopro = Product.create(
    name: 'GoPro', 
    description: 'HERO3+: Black Edition. Super View video mode captures the world"s most immersive wide angle perspective',
    price: "399.00",
    img_filepath: "/img/gopro.jpeg",
    url: "http://www.amazon.com/GoPro-CHDHX-302-HERO3-Black-Edition/dp/B00F3F0GLU/ref=zg_bs_electronics_14"
  )
  gopro.categories.push(technology, camera, art, sports)

  ipad = Product.create(
    name: 'Apple iPad mini ', 
    description: 'MD531LL/A (16GB, Wi-Fi, White / Silver). 7.9-inch LED-backlit Multi-Touch Display; 1024-by-768 Resolution',
    price: 244.87,
    img_filepath: "/img/ipad.jpeg",
    url: "http://www.amazon.com/Apple-MD531LL-Wi-Fi-White-Silver/dp/B00746W9F2/ref=zg_bs_electronics_18"
  )
  ipad.categories.push(technology, entertainment, school)

  roku3 = Product.create(
    name: 'Roku 3', 
    description: 'Faster and more powerful. With up to 1080p HD video* and extended-range, dual-band wireless performance for increased speed',
    price: "94.50",
    img_filepath: "/img/roku3.jpeg",
    url: "http://www.amazon.com/Roku-3-Streaming-Media-Player/dp/B00BGGDVOO/ref=zg_bs_electronics_10"
  )
  roku3.categories.push(technology,entertainment, movies, tv)

  iphone = Product.create(
    name: 'Apple iPhone 6', 
    description: '4.7 Inch 16GB Unlocked (T-Mobile) Silver',
    price: 812.40,
    img_filepath: "/img/iphone6.jpeg",
    url: "http://www.amazon.com/Apple-Iphone-4-7-Inch-Unlocked/dp/B00NH2VLGK/ref=sr_1_2?s=electronics&ie=UTF8&qid=1411701062&sr=1-2&keywords=iphone+6"
  )
  iphone.categories.push(technology, hipster, music, camera)

  jeans = Product.create(
    name: 'Levis Mens 511 Slim Fit', 
    description: 'Slim-fitting jean with button fly and slightly tapered leg',
    price: 32.97,
    img_filepath: "/img/jeans.jpeg",
    url: "http://www.amazon.com/Levis-Mens-511-Slim-Jean/dp/B0018OLTAC/ref=zg_bs_apparel_1"
  )
  jeans.categories.push(fashion, design)

  jordan = Product.create(
    name: 'Nike Mens Air Jordan V 5 Retro Basketball Shoe', 
    description: 'Fresh! May make you jump higher. Made in China.',
    price: "500.00",
    img_filepath: "/img/jordan.jpeg",
    url: "http://www.amazon.com/Nike-Mens-Jordan-Retro-Basketball/dp/B004ZNMIE4"
  )
  jordan.categories.push(fashion, sports, retro)

  olaf = Product.create(
    name: 'Olaf Deluxe Toddler Costume', 
    description: 'Includes: Jumpsuit with plush overlay and soft character headpiece.',
    price: 28.98,
    img_filepath: "/img/olaf.jpeg",
    url: "http://www.amazon.com/Disguise-Disney-Frozen-Toddler-Costume/dp/B00M2J07KU/ref=zg_bs_apparel_7"
  )
  olaf.categories.push(baby, movies)

  raybans = Product.create(
    name: 'Wayfarer Sunglasses', 
    description: 'Ray-Ban RB2132. Acetate Frame. Acetate is a plant-based plastic known for being lightweight, yet durable.',
    price: 72.68,
    img_filepath: "/img/raybans.jpeg",
    url: "http://www.amazon.com/Ray-Ban-RB2132-New-Wayfarer-Sunglasses/dp/B003CIP4TE/ref=zg_bs_apparel_13"
  )
  raybans.categories.push(fashion, travel, retro)

  pettags = Product.create(
    name: 'Heart Shaped Pet ID Tags', 
    description: 'Give Scruffy a little piece of flair with these tough and lightweight Pet ID tags. Choose Your Color: Red, Blue, Pink, Purple, Silver, Green, Gold, Orange, Black',
    price: 3.75,
    img_filepath: "/img/pettags.jpg",
    url: "http://www.amazon.com/Heart-Shaped-colors-available-Aluminum/dp/B00BZBHV96/ref=sr_1_21?s=pet-supplies&ie=UTF8&qid=1411701934&sr=1-21"
  )
  pettags.categories.push(pets, design)

  dogfood = Product.create(
    name: 'Wellness Original Formula Dog Food', 
    description: 'A unique grain-free, poultry-free choice for dogs over 1 year who need to maintain optimal daily health',
    price: 52.38,
    img_filepath: "/img/dogfood.jpeg",
    url: "http://www.amazon.com/Wellness-CORE-Original-Formula-26-Pound/dp/B000VTTAMY/ref=lp_2975359011_1_4?s=pet-supplies&ie=UTF8&qid=1411702096&sr=1-4"
  )
  dogfood.categories.push(pets)

  dogtoy = Product.create(
    name: 'Squeaking Dog Toy', 
    description: 'Marvin the moose is soft and cuddly, yet tough and durable. Squeaks to promote play!',
    price: "21.30",
    img_filepath: "/img/dogtoy.jpeg",
    url: "http://www.amazon.com/KONG-Cozie-Marvin-Moose-Medium/dp/B005AP3B8S/ref=sr_1_1?ie=UTF8&qid=1411719192&sr=8-1&keywords=marvin+the+moose+dog+toy"
  )
  dogtoy.categories.push(pets)

  pots = Product.create(
    name: 'Stainless 13-Piece Cookware Set', 
    description: '1-1/2 and 2-1/2 qt. saucepans with cover, 3 qt. sauté pan with cover, 4 qt. dutch oven with cover, pasta insert, and 8 and 10 inch skillets',
    price: "199.00",
    img_filepath: "/img/pots.jpeg",
    url: "http://www.amazon.com/gp/product/B002WPG0QY/ref=s9_hps_bw_g79_i4?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-6&pf_rd_r=1VSWM81P0QVSF48DC31S&pf_rd_t=101&pf_rd_p=1818859622&pf_rd_i=289814"
  )
  pots.categories.push(home, neat)

  jars = Product.create(
    name: 'Heritage Collection Pint Jars', 
    description: 'Ideal for preserving jams, jellies, sauces, mustards & flavored vinegars. Custom time-tested ceiling compound helps ensure a quality seal with each lid',
    price: 13.99,
    img_filepath: "/img/jars.jpeg",
    url: "http://www.amazon.com/Ball-Heritage-Collection-Pint-Bands/dp/B00B80TJX0/ref=lp_289814_1_1?s=kitchen&ie=UTF8&qid=1411702392&sr=1-1"
  )
  jars.categories.push(home, neat)

  hangpics = Product.create(
    name: 'Umbra Hangit Photo Display', 
    description: 'Hang it photo display by Umbra is a casual, artistic way to display your favorite photos and artworks or socks.',
    price: 19.99,
    img_filepath: "/img/hangpics.jpeg",
    url: "http://www.amazon.com/Umbra-315000-660-Hangit-Photo-Display/dp/B00EV5E76I/ref=lp_9627179011_1_6?s=home-garden&ie=UTF8&qid=1411716589&sr=1-6"
  )
  hangpics.categories.push(home, design, art, camera)

  dyson = Product.create(
    name: 'Dyson DC65 Upright Vacuum Cleaner', 
    description: 'Tangle-free Turbine tool- The only turbine tool that doesnt tangle. Counter-rotating heads with brushes remove hair and dirt from upholstery.',
    price: 500.44,
    img_filepath: "/img/dyson.jpeg",
    url: "http://www.amazon.com/Dyson-DC65-Animal-Complete-Upright/dp/B00HNUFSLG/ref=lp_510110_1_8?s=vacuums&ie=UTF8&qid=1411702893&sr=1-8"
  )
  dyson.categories.push(home, neat, design)

  lavalamp = Product.create(
    name: 'Lava Lite Electroplasma Lamp', 
    description: 'A fun alternative light source, the Electroplasma Lava Light sets the mood in any room. Designed to create light that looks like a lightening storm, the lamp is a great conversation piece',
    price: 34.99,
    img_filepath: "/img/lavalamp.jpeg",
    url: "http://www.amazon.com/Lava-Lite-Electroplasma-Lamp-Black/dp/B000Y7RLCE/ref=pd_sim_sbs_hg_5?ie=UTF8&refRID=0WB1EM7P1RR93CFRQC6F"
  )
  lavalamp.categories.push(home, retro) 

  drawer = Product.create(
    name: 'InterDesign 3-Drawer Multipurpose Storage Container', 
    description: 'Multipurpose use for makeup, jewelry, crafts, office supplies, and more',
    price: 14.79,
    img_filepath: "/img/drawer.jpeg",
    url: "http://www.amazon.com/InterDesign-3-Drawer-Multipurpose-Storage-Container/dp/B004KKXA58/ref=lp_165119011_1_2?s=storageorganization&ie=UTF8&qid=1411703044&sr=1-2"
  )
  drawer.categories.push(home, neat)

 book1 = Product.create(
    name: 'The Fourteenth Goldfish', 
    description: 'Believe in the possible . . . with this brilliantly quirky, thought-provoking novel from New York Times bestseller, three-time Newbery Honor winner Jennifer L. Holm',
    price: 10.74,
    img_filepath: "/img/book1.jpeg",
    url: "http://www.amazon.com/gp/product/0375870644/ref=s9_al_bw_g14_i1?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-2&pf_rd_r=09K6EKR33NC7RC30XVFC&pf_rd_t=101&pf_rd_p=1912058882&pf_rd_i=6129870011"
  )
 book1.categories.push(books, culture, hipster)

 book2 = Product.create(
    name: 'The Walking Dead', 
    description: 'The Walking Dead Book in hard cover. Ricks treaty with Negan and the Saviors is pushed to the limit, as both sides march toward ALL OUT WAR!',
    price: 25.06,
    img_filepath: "/img/book2.jpeg",
    url: "http://www.amazon.com/The-Walking-Dead-Book-10/dp/1632150344/ref=br_lf_m_1000401561_1_1_img?ie=UTF8&s=books&pf_rd_p=1926013862&pf_rd_s=center-2&pf_rd_t=1401&pf_rd_i=1000401561&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=0DNQ5F2GXKXFYHAC4960"
  )
  book2.categories.push(books, entertainment)

  book3 = Product.create(
    name: 'Act Like a Success, Think Like a Success', 
    description: 'In his phenomenal #1 New York Times bestseller Act Like a Lady, Think Like a Man, Steve Harvey told women what it takes to succeed in love.',
    price: 15.59,
    img_filepath: "/img/book3.jpeg",
    url: "http://www.amazon.com/Act-Like-Success-Think-Discovering/dp/0062220322/ref=br_lf_m_239353_1_1_img?ie=UTF8&s=books&pf_rd_p=1926013822&pf_rd_s=center-2&pf_rd_t=1401&pf_rd_i=239353&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=0C3RV9REQASPGW1RX5C0"
  )
  book3.categories.push(books)

  bike = Product.create(
    name: 'Hollandia Land Cruiser L Bicycle', 
    description: 'Cannot stand on its own because its two tired... Six-speed womens cruiser bike with an aluminum frame.',
    price: 120.22,
    img_filepath: "/img/bike.jpeg",
    url: "http://www.amazon.ca/Hollandia-Land-Cruiser-Bicycle-26-Inch/dp/B004XYZY82/ref=sr_1_5?s=sports&ie=UTF8&qid=1411714157&sr=1-5"
  )
  bike.categories.push(sports, bicycle, retro)

  soccerball = Product.create(
    name: 'America Royale Soccer Ball', 
    description: 'Select Sport. Kick this. Comes in White or White/Yellow.',
    price: 328.32,
    img_filepath: "/img/soccerball.jpeg",
    url: "http://www.amazon.ca/Select-Sport-01-253-857-America-Royale/dp/B004L3FXFY/ref=sr_1_3?s=sports&ie=UTF8&qid=1411714431&sr=1-3"
  )
  soccerball.categories.push(sports, fitness)

  brazil = Product.create(
    name: 'World Cup Brazil T-shirt Royal', 
    description: 'Officially Licensed Merchandise.Detailed Graphic Artwork Design. This year was just unfortunate.',
    price: 16.45,
    img_filepath: "/img/brazil.jpeg",
    url: "http://www.amazon.ca/Old-Glory-Brazil-T-shirt-X-Large/dp/B00IJJ6VSE/ref=sr_1_2?s=sports&ie=UTF8&qid=1411714729&sr=1-2&keywords=brazil"
  )
  brazil.categories.push(sports, fitness, fashion)

  tennis = Product.create(
    name: 'Wilson Tennis Racquet', 
    description: 'Cause a racquet! Wilson 12 Pro Staff Six.One 95 BLX. Headsize: 95 square inches / 613 sq. cm',
    price: 139.95,
    img_filepath: "/img/tennis.jpeg",
    url: "http://www.amazon.ca/Wilson-Staff-Six-One-Tennis-Racquet-4/dp/B006YTLGXG/ref=sr_1_9?s=sports&ie=UTF8&qid=1411715259&sr=1-9"
  )
  tennis.categories.push(sports, fitness)

  xmen = Product.create(
    name: 'X-Men: Days of Future Past [Blu-ray]', 
    description: 'Hugh Jackman, James McAvoy, Michael Fassbender, Jennifer Lawrence, and Halle Berry. They all have the mutant power of beauty.',
    price: 22.99,
    img_filepath: "/img/x-men.jpeg",
    url: "http://www.amazon.com/X-Men-Days-Future-Past-Blu-ray/dp/B00K7IPGS6/ref=zg_mw_movies-tv_2"
  )
  xmen.categories.push(entertainment, movies, tv)

  bigbang = Product.create(
    name: 'The Big Bang Theory: The Complete Seventh Season', 
    description: 'Bazinga! We can all relate to the content',
    price: 25.71,
    img_filepath: "/img/bigbang.jpeg",
    url: "http://www.amazon.com/The-Big-Bang-Theory-Complete/dp/B00FEVZ960/ref=zg_mw_movies-tv_8"
  )
  bigbang.categories.push(entertainment, tv, technology)

  downton = Product.create(
    name: 'Downton Abbey Seasons 1 - 4', 
    description: 'This is the epic tale of the Crawley family and their servants.',
    price: 35.75,
    img_filepath: "/img/downton.jpeg",
    url: "http://www.amazon.ca/Masterpiece-Downton-Abbey-Seasons-Blu-ray/dp/B00KX45CJW/ref=sr_1_5?s=dvd&ie=UTF8&qid=1411844582&sr=1-5&keywords=downton+abbey"
  )
  downton.categories.push(entertainment, tv)

  cookbook = Product.create(
    name: 'The Oh She Glows Cookbook', 
    description: 'Vegan recipes to glow from the inside out!',
    price: 25.99,
    img_filepath: "/img/cookbook.jpeg",
    url: "http://www.amazon.ca/The-Oh-She-Glows-Cookbook/dp/0143187228/ref=zg_bs_books_home_3?pf_rd_p=1291077342&pf_rd_s=center-3&pf_rd_t=2101&pf_rd_i=home&pf_rd_m=A3DWYIK6Y9EEQB&pf_rd_r=1ZV7KFMQKW9N1WRDV5D5"
  )
  cookbook.categories.push(books, food, natural, hipster)

  smashbros = Product.create(
    name: 'Super Smash Bros for Nintendo 3DS', 
    description: 'Battle it out as Nintendo’s greatest heroes—right in the palm of your hand! ',
    price: "45.20",
    img_filepath: "/img/smashbros.jpeg",
    url: "http://www.amazon.ca/Super-Smash-Bros-Nintendo-3DS/dp/B00JATU2U0/ref=zg_bs_videogames_home_1?pf_rd_p=1291076482&pf_rd_s=center-5&pf_rd_t=2101&pf_rd_i=home&pf_rd_m=A3DWYIK6Y9EEQB&pf_rd_r=1ZV7KFMQKW9N1WRDV5D5"
  )
  smashbros.categories.push(videogames, entertainment, technology, retro)

  destiny = Product.create(
    name: 'Destiny', 
    description: 'An incredible story set within a newly-imagined, always-connected universe filled with action and adventure. ',
    price: "69.00",
    img_filepath: "/img/destiny.jpeg",
    url: "http://www.amazon.ca/dp/B00BGA9Y3W?pf_rd_p=1930454742&pf_rd_s=merchandised-search-4&pf_rd_t=101&pf_rd_i=3198031&pf_rd_m=A3DWYIK6Y9EEQB&pf_rd_r=0FM9BMC9HD1EXBQ0W5HQ"
  )
  destiny.categories.push(videogames, entertainment, technology)

  nhl = Product.create(
    name: 'NHL 15', 
    description: 'NHL 15 brings hockey to life the sights, sounds and feel of real NHL action like never before',
    price: 69.95,
    img_filepath: "/img/nhl.jpeg",
    url: "http://www.amazon.ca/NHL-15-Standard-PlayStation-4/dp/B00KKDYEZ4/ref=sr_1_1?s=videogames&ie=UTF8&qid=1411847904&sr=1-1&keywords=NHL+15"
  )
  nhl.categories.push(videogames, entertainment, technology, sports)

  callofduty = Product.create(
    name: 'Call of Duty: Advanced Warfare', 
    description: 'Pre-order Call of Duty®: Advanced Warfare and get access to the Advanced Arsenal, featuring a custom bullet brass themed exoskeleton and the EM1 Quantum',
    price: "69.00",
    img_filepath: "/img/callofduty.jpeg",
    url: "http://www.amazon.ca/Call-Duty-Advanced-Warfare-Windows/dp/B00K628K2W/ref=sr_1_1_title_4?s=videogames&ie=UTF8&qid=1411847990&sr=1-1&keywords=call+of+duty"
  )
  callofduty.categories.push(videogames, entertainment, technology, weapons)

  pokemon = Product.create(
    name: 'Pokemon Omega Ruby - Nintendo 3DS', 
    description: 'Pokémon Omega Ruby and Pokemon Alpha Sapphire will take players on a journey like no other as they collect, battle and trade Pokemon ',
    price: 44.95,
    img_filepath: "/img/pokemonruby.jpeg",
    url: "http://www.amazon.ca/Call-Duty-Advanced-Warfare-Windows/dp/B00K628K2W/ref=sr_1_1_title_4?s=videogames&ie=UTF8&qid=1411847990&sr=1-1&keywords=call+of+duty"
  )
  pokemon.categories.push(videogames, entertainment, technology, retro)

  xbox = Product.create(
    name: 'Xbox One - Standard Edition', 
    description: 'The next generation console from Mr. Gates. Media center capability.',
    price: 449.95,
    img_filepath: "/img/xbox.jpeg",
    url: "http://www.amazon.ca/Call-Duty-Advanced-Warfare-Windows/dp/B00K628K2W/ref=sr_1_1_title_4?s=videogames&ie=UTF8&qid=1411847990&sr=1-1&keywords=call+of+duty"
  )
  xbox.categories.push(videogames, entertainment, technology, tv, movies)

 turntable = Product.create(
    name: 'Stanton DJ Turntable', 
    description: 'Wikka wikka! STSTR8150 High Torque Direct Drive DJ Turntable',
    price: 605.95,
    img_filepath: "/img/turntable.jpeg",
    url: "http://www.amazon.ca/Stanton-STR8150-Torque-Direct-Turntable/dp/B0000C5NYD/ref=sr_1_1?s=electronics&ie=UTF8&qid=1411849051&sr=1-1&keywords=turn+tables"
  )
  turntable.categories.push(music, party, instrument, technology)

  samsungtv = Product.create(
    name: 'Samsung 55-Inch HDTV', 
    description: 'Smart TV with voice control. UN55F7100 55-Inch 1080p 240Hz 3D Ultra Slim Smart LED HDTV',
    price: 1999.95,
    img_filepath: "/img/samsungtv.jpeg",
    url: "http://www.amazon.ca/Samsung-UN55F7100-55-Inch-1080p-240Hz/dp/B00BCGROJG/ref=sr_1_3?s=electronics&ie=UTF8&qid=1411849433&sr=1-3"
  )
  samsungtv.categories.push(tv, technology, movies, entertainment, videogames)

  lgtv = Product.create(
    name: 'LG 65-inch HDTV', 
    description: 'LG is peacocking with this one. 65UB9500 65-Inch 4K Ultra HD 120Hz 3D LED TV',
    price: 3700.59,
    img_filepath: "/img/lgtv.jpeg",
    url: "http://www.amazon.ca/LG-Electronics-65UB9500-65-Inch-Ultra/dp/B00KH7NBI4/ref=sr_1_16?s=electronics&ie=UTF8&qid=1411849943&sr=1-16"
  )
  lgtv.categories.push(tv, technology, movies, entertainment, videogames)

  girlwatch = Product.create(
    name: 'Marc By Marc Jacobs Womens Watch', 
    description: 'MBM3280 Silver Stainless-Steel Swiss Quartz Watch with Pink Dial',
    price: 229.95,
    img_filepath: "/img/girlwatch.jpeg",
    url: "http://www.amazon.ca/Marc-Jacobs-Womens-MBM3280-Stainless-Steel/dp/B00I3V0Y2M/ref=sr_1_5?s=watch&ie=UTF8&qid=1411850209&sr=1-5"
  )
  girlwatch.categories.push(fashion, jewelry, design)

  guywatch = Product.create(
    name: 'Bell & Ross Aviation Mens Watch', 
    description: 'BR01-92AIRSPEED',
    price: 5394.95,
    img_filepath: "/img/guywatch.jpeg",
    url: "http://www.amazon.ca/Bell-Ross-Aviation-Watch-BR01-92AIRSPEED/dp/B00H6V6HAI/ref=sr_1_2?s=watch&ie=UTF8&qid=1411850420&sr=1-2&keywords=bell+ross"
  )
  guywatch.categories.push(fashion, jewelry, design)

  foofighters = Product.create(
    name: 'Sonic Highways [180g Vinyl LP + Digital] Limited ', 
    description: 'Produced by Butch Vig and Foo Fighters',
    price: 22.95,
    img_filepath: "/img/foofighters.jpeg",
    url: "http://www.amazon.ca/Sonic-Highways-180g-Vinyl-Digital/dp/B00MJLOAYU/ref=pd_sim_m_10?ie=UTF8&refRID=18YX42SA2D96DG01PFK0"
  )
  foofighters.categories.push(music, retro)

  necklace = Product.create(
    name: 'Two Heart Pendant Necklace', 
    description: 'Bling Jewelry Gold Vermeil Sterling Silver Two Heart Pendant Necklace 16in',
    price: 51.99,
    img_filepath: "/img/necklace.jpeg",
    url: "http://www.amazon.ca/Bling-Jewelry-Vermeil-Sterling-Necklace/dp/B003F88PT2/ref=sr_1_13?s=miscellaneous&ie=UTF8&qid=1411850851&sr=1-13&keywords=necklace"
  )
  necklace.categories.push(fashion)

 lotr = Product.create(
    name: 'The Lord of the Rings ring', 
    description: '18K gold replica Hobbit Lord of the Rings boxed (japan import)',
    price: 36.29,
    img_filepath: "/img/lotr.jpeg",
    url: "http://www.amazon.ca/Rings-chain-necklace-replica-Hobbit/dp/B00DWMRHFE/ref=sr_1_5?s=miscellaneous&ie=UTF8&qid=1411851026&sr=1-5&keywords=ring"
  )
  lotr.categories.push(fashion, jewelry, design, movies)

  blingshoes = Product.create(
    name: 'MAXI Stiletto Heel Platform Pumps', 
    description: 'Add these with your favourite little black dress. Finished with diamante and peep toe',
    price: 44.29,
    img_filepath: "/img/blingshoes.jpeg",
    url: "http://www.amazon.ca/Stiletto-Diamante-Platform-Court-Pumps/dp/B00M0OE9IS/ref=pd_sim_sbs_s_3?ie=UTF8&refRID=1NNHGBGTJG2HAKTM4KP1"
  )
  blingshoes.categories.push(fashion, jewelry, design)

  guitar = Product.create(
    name: 'Jasmine S35 Acoustic Guitar', 
    description: 'Spruce top, to spruce up the sound. Laminated Nato back & sides.',
    price: 123.88,
    img_filepath: "/img/guitar.jpeg",
    url: "http://www.amazon.ca/Jasmine-S35-Acoustic-Guitar-Natural/dp/B0002F58TG/ref=sr_1_6?s=musical-instruments&ie=UTF8&qid=1411851639&sr=1-6"
  )
  guitar.categories.push(music, instrument, technology)

   nursery = Product.create(
    name: 'Nursery Organizer', 
    description: 'DEX Products, INC Dexbaby Nursery Organizer, White',
    price: 19.99,
    img_filepath: "/img/nursery.jpeg",
    url: "http://www.amazon.ca/DEX-Products-INC-Dexbaby-Organizer/dp/B003ULP59M/ref=sr_1_1?ie=UTF8&qid=1411851979&sr=8-1&keywords=baby"
  )
  nursery.categories.push(baby, home)

   wallart = Product.create(
    name: 'Oil Wall Art, 5 piece set', 
    description: 'Paintings come in multiple sizes. Expensive look for a budget!',
    price: 48.99,
    img_filepath: "/img/wallart.jpeg",
    url: "http://www.amazon.ca/dp/B00CI2E5I6/ref=sr_1_12?s=kitchen&ie=UTF8&qid=1411852127&sr=1-12&keywords=painting"
  )
  wallart.categories.push(art, home, design)

   nailart = Product.create(
    name: '240 Fruit Slice Nail Art Tips', 
    description: 'Great for nail art decoration with nail polish. Not for nail biters.',
    price: 12.99,
    img_filepath: "/img/nailart.jpeg",
    url: "http://www.amazon.ca/Fruit-Slice-Nail-Decoration-Wheel/dp/B00EJA7D16/ref=sr_1_12?s=kitchen&ie=UTF8&qid=1411852283&sr=1-12&keywords=decoration"
  )
  nailart.categories.push(art, fashion, design, party)

  aeropress = Product.create(
    name: 'AeroPress Coffee and Espresso Maker', 
    description: 'Unique coffee/espresso maker uses total immersion and gentle pressure to produce coffee with extraordinarily rich flavor',
    price: 29.99,
    img_filepath: "/img/aeropress.jpeg",
    url: "http://www.amazon.ca/Aerobie-83R01-AeroPress-Coffee-Espresso/dp/B0047BIWSK/ref=sr_1_1?s=kitchen&ie=UTF8&qid=1411852499&sr=1-1&keywords=coffee"
  )
  aeropress.categories.push(coffee, culture, home)

 coffeemug = Product.create(
    name: 'Camera Lens Coffee Mug', 
    description: 'Thermos with Drinking Lid & Quality Stainless Steel Interior. Doesnt take pictures.',
    price: 16.99,
    img_filepath: "/img/coffeemug.jpeg",
    url: "http://www.amazon.ca/Thermos-Drinking-Quality-Stainless-Interior-24-105mm/dp/B00BYORFBI/ref=sr_1_6?s=kitchen&ie=UTF8&qid=1411852499&sr=1-6&keywords=coffee"
  )
  coffeemug.categories.push(coffee, culture, home, design)
  
  coffeemaker = Product.create(
    name: 'Keurig KUB31R Coffee Maker ', 
    description: 'Compact size, perfect for small spaces. Comes with K-cup pack.',
    price: 82.74,
    img_filepath: "/img/coffeemaker.jpeg",
    url: "http://www.amazon.ca/Keurig-KUB31R-Coffee-Maker-K-cups/dp/B004SVS1VC/ref=sr_1_1?s=kitchen-substore&ie=UTF8&qid=1411852838&sr=1-1&keywords=coffee+maker"
  )
  coffeemaker.categories.push(coffee, culture, home)

   knives = Product.create(
    name: '5 Piece Knife Set', 
    description: 'From Famous Japanese Chef - Komei Nakamura',
    price: 39.21,
    img_filepath: "/img/knives.jpeg",
    url: "http://www.amazon.ca/Piece-Knife-Famous-Japanese-Chef/dp/B001GU039G/ref=sr_1_1?ie=UTF8&qid=1411859609&sr=8-1&keywords=knife+set+Komei+Nakamura"
  )
  knives.categories.push(food, home, weapons)

    nerf = Product.create(
    name: 'Nerf N-Strike Vulcan EBF-25 Dart Blaster', 
    description: 'Take out the whole office with this thing.',
    price: 399.99,
    img_filepath: "/img/nerf.jpeg",
    url: "http://www.amazon.ca/Nerf-N-Strike-Vulcan-EBF-25-Blaster/dp/B003H9MTJ6/ref=sr_1_9?s=toys&ie=UTF8&qid=1411853074&sr=1-9&keywords=nerf"
  )
  nerf.categories.push(weapons)

      hose = Product.create(
    name: 'Expandable Flexible Garden Water Hose', 
    description: '50ft. With Spray Gun Nozzle',
    price: 19.99,
    img_filepath: "/img/hose.jpeg",
    url: "http://www.amazon.ca/gp/product/B00EU6JZO2/ref=s9_hps_bw_g79_i4?pf_rd_m=A3DWYIK6Y9EEQB&pf_rd_s=merchandised-search-6&pf_rd_r=0BX5PVV465EVR41PESHR&pf_rd_t=101&pf_rd_p=1510432442&pf_rd_i=2224149011"
  )
  hose.categories.push(plant)


  horse = Product.create(
    name: 'Horse Head Mask', 
    description: 'Awesome conversation piece. Be the center of attention',
    price: 20.99,
    img_filepath: "/img/horse.jpeg",
    url: "http://www.amazon.ca/Accoutrements-12027-Horse-Head-Mask/dp/B003G4IM4S/ref=sr_1_6?ie=UTF8&qid=1411853384&sr=8-6&keywords=mask"
  )
  horse.categories.push(party, entertainment)

  winekit = Product.create(
    name: 'Deluxe Wine Bottle Gift Set', 
    description: 'Bottle Opener, Stopper, Drip Ring, Foil Cutter and Wine Pourer',
    price: 23.64,
    img_filepath: "/img/winekit.jpeg",
    url: "http://www.amazon.ca/Deluxe-Wine-Bottle-Gift-Set/dp/B00AZN5RGY/ref=sr_1_3?ie=UTF8&qid=1411853495&sr=8-3&keywords=wine"
  )
  winekit.categories.push(party, entertainment, wine, food, home)

beer = Product.create(
    name: 'EZ Drinker Beer and Soda Can Holster Belt', 
    description: 'Adjusts to Fit any Waist Comfortably. Easy to lose in the woods.',
    price: 6.49,
    img_filepath: "/img/beer.jpeg",
    url: "http://www.amazon.ca/EZ-Drinker-Redneck-Holster-6-Pack/dp/B006CU9P1C/ref=sr_1_4?ie=UTF8&qid=1411853624&sr=8-4&keywords=beer"
  )
  beer.categories.push(party, wine)

  gotoob = Product.create(
    name: 'HumanGear GoToob, 1.25-Ounce, Small, 3-pack', 
    description: 'GoToob is the civilized, smart, squeezable tube for traveling, outdoors and more',
    price: 20.45,
    img_filepath: "/img/gotoob.jpeg",
    url: "http://www.amazon.ca/HumanGear-GoToob-1-25-Ounce-3-pack-HG0181/dp/B0076DNUEW/ref=pd_sim_luggage_4?ie=UTF8&refRID=0N1XC2WAM426J3YSQHNN"
  )
  gotoob.categories.push(travel)

  luggage = Product.create(
    name: 'Nautica Ahoy 28 Inch Hardside Spinner Suitcase', 
    description: 'Telescoping trolley handles are recessed and feature a push-button locking mechanism',
    price: 160.45,
    img_filepath: "/img/luggage.jpeg",
    url: "http://www.amazon.ca/gp/product/B00BA083BM/ref=s9_hps_bw_g198_i3?pf_rd_m=A3DWYIK6Y9EEQB&pf_rd_s=merchandised-search-8&pf_rd_r=0H7XADWCW035MXWDRQQ7&pf_rd_t=101&pf_rd_p=1578251922&pf_rd_i=6205505011"
  )
  luggage.categories.push(travel)

  paints = Product.create(
    name: 'Folk Art PROMOFAI Acrylic Paint', 
    description: 'Collection of best selling colors, 2-ounce',
    price: "28.50",
    img_filepath: "/img/paints.jpeg",
    url: "http://www.amazon.ca/gp/product/B00BA083BM/ref=s9_hps_bw_g198_i3?pf_rd_m=A3DWYIK6Y9EEQB&pf_rd_s=merchandised-search-8&pf_rd_r=0H7XADWCW035MXWDRQQ7&pf_rd_t=101&pf_rd_p=1578251922&pf_rd_i=6205505011"
  )
  paints.categories.push(art, design)

   yoga = Product.create(
    name: 'Extra Thick High Density Yoga Mat', 
    description: 'Phthalate free inks and dyes. Cheaper than Lulu!',
    price: 21.99,
    img_filepath: "/img/yoga.jpeg",
    url: "http://www.amazon.ca/YogaAccessories-Extra-Density-Yoga-Phthalate/dp/B000PUFF3M/ref=sr_1_3?ie=UTF8&qid=1411854482&sr=8-3&keywords=yoga"
  )
  yoga.categories.push(fitness)

  weightset = Product.create(
    name: 'Weight Set with Dumbbells', 
    description: 'Set includes two 20-pound weights, four ten-pound weights, four five-pound weights, six locking spring clips, and two dumbbell bars',
    price: 99.99,
    img_filepath: "/img/weightset.jpeg",
    url: "http://www.amazon.ca/weightsetAccessories-Extra-Density-weightset-Phthalate/dp/B000PUFF3M/ref=sr_1_3?ie=UTF8&qid=1411854482&sr=8-3&keywords=yoga"
  )
  weightset.categories.push(fitness)

  disco = Product.create(
    name: 'Disco DJ Party Ball ', 
    description: 'New crystal magic ball with strobe effects, red, green,blue,white,orange five colors',
    price: 49.99,
    img_filepath: "/img/disco.jpeg",
    url: "http://www.amazon.ca/Coco-Performing-Equipment-Changing-Lighting/dp/B00ES4GD3C/ref=sr_1_3?ie=UTF8&qid=1411854814&sr=8-3&keywords=disco+ball"
  )
  disco.categories.push(party, music, technology)

   helmet = Product.create(
    name: 'Stealth Helmet', 
    description: 'Transforms easily from open face to full face style with included jaw piece for additional wind, rain or dust protection',
    price: 85.99,
    img_filepath: "/img/helmet.jpeg",
    url: "http://www.amazon.ca/dp/B00C890628/ref=sr_1_2?ie=UTF8&qid=1411854977&sr=8-2&keywords=helmet"
  )
  helmet.categories.push(weapons, sports)

  turbo = Product.create(
    name: 'Direct Bolt-on Turbocharger', 
    description: 'Go fast. Reduces (exhaust gas temperatures) E.G.T up to 150 plus degrees',
    price: 1395.99,
    img_filepath: "/img/turbo.jpeg",
    url: "http://www.amazon.ca/aFe-Power-46-60051-BladeRunner-Turbocharger/dp/B005NW673Y/ref=sr_1_4?s=automotive&ie=UTF8&qid=1411855149&sr=1-4&keywords=turbocharger"
  )
  turbo.categories.push(car)

  wheelcover = Product.create(
    name: 'Steering Wheel Cover', 
    description: 'Tinker Bell Pixie Power. Get to never-never land in style. ',
    price: 1395.99,
    img_filepath: "/img/wheelcover.jpeg",
    url: "http://www.amazon.ca/Tinker-Pixie-Power-Steering-Wheel/dp/B000BVCW2W/ref=sr_1_18?s=automotive&ie=UTF8&qid=1411855277&sr=1-18&keywords=wheel+cover"
  )
  wheelcover.categories.push(car)

  dinersign = Product.create(
    name: 'Retro Diner BBQ Poster Print', 
    description: 'Hang in your kitchen to give the space a retro flare. Mmm, BBQ.',
    price: "8.75",
    img_filepath: "/img/diner.jpg",
    url: "http://www.amazon.ca/Retro-Diner-Poster-Studio-voltaire/dp/B003J1YWX8/ref=sr_1_4?ie=UTF8&qid=1411945431&sr=8-4&keywords=retro+bbq"
  )
  dinersign.categories.push(meat, food, design, retro)

  pubsign = Product.create(
    name: 'King of the BBQ Pub Sign', 
    description: 'Warm up your patio with this hearty reminder of good food and good times.',
    price: "12.95",
    img_filepath: "/img/pub.jpg",
    url: "http://www.amazon.ca/MUG4180-BRAND-FUNNY-RETRO-QUALITY/dp/B00F42KJ1O/ref=sr_1_11?ie=UTF8&qid=1411945431&sr=8-11&keywords=retro+bbq"
  )

  pubsign.categories.push(food, design, retro)

  meatbook = Product.create(
    name: 'MEAT: Everything You Need to Know', 
    description: "This hardcover gem is an elegant addition to any meat-lover's collection.",
    price: "30.05",
    img_filepath: "/img/meatbook.jpg",
    url: "http://www.amazon.ca/MEAT-Everything-You-Need-Know/dp/1476725993/ref=sr_1_1?ie=UTF8&qid=1411945478&sr=8-1&keywords=meat"
  )

  meatbook.categories.push(meat, food, design, books)

  bbq = Product.create(
    name: 'Weber One Touch Gold Kettle Grill', 
    description: "This beauty of a grill is a staple for summer patio parties.",
    price: "169.00",
    img_filepath: "/img/bbq.jpg",
    url: "http://www.amazon.ca/Weber-1351001-One-Touch-Kettle-22-5-Inch/dp/B0098HR0WM/ref=sr_1_18?ie=UTF8&qid=1411945517&sr=8-18&keywords=bbq"
  )

  bbq.categories.push(meat, food, design, retro)

  bacon = Product.create(
    name: 'Cast Iron Pig Bacon Grill Press', 
    description: "Even the best cut bacon can curl, making it difficult to cook evenly. This press will keep it flat.",
    price: "12.90",
    img_filepath: "/img/bacon.jpg",
    url: "http://www.amazon.ca/Norpro-Cast-Bacon-Grill-Press/dp/B0002IBQWG/ref=sr_1_8?s=kitchen&ie=UTF8&qid=1411945553&sr=1-8&keywords=bacon"
  )

  bacon.categories.push(meat, food, design)

  lightchange = Product.create(
    name: 'Music Controller for Color Changing Lights', 
    description: "This music controller allows you to wireless control your color changing (RGB) LEDs via infrared remote control.",
    price: "40.00",
    img_filepath: "/img/lightchange.jpg",
    url: "http://www.amazon.ca/Norpro-Cast-Bacon-Grill-Press/dp/B0002IBQWG/ref=sr_1_8?s=kitchen&ie=UTF8&qid=1411945553&sr=1-8&keywords=bacon"
  )

  lightchange.categories.push(technology, music, party)

  bikeseat = Product.create(
    name: 'CoPilot Bicycle Child Seat', 
    description: "Ride in style with your little one in tow!",
    price: "186.93",
    img_filepath: "/img/bikeseat.jpg",
    url: "http://www.amazon.ca/CoPilot-Taxi-Bicycle-Child-Seat/dp/B000G22QHW/ref=sr_1_5?ie=UTF8&qid=1411947373&sr=8-5&keywords=bicycle+baby+carrier"
  )

  bikeseat.categories.push(baby, bicycle)

  trike = Product.create(
    name: 'Classic Red Tricycle', 
    description: "The kid who rides this will have no regrets in life, ever.",
    price: "126.38",
    img_filepath: "/img/trike.jpg",
    url: "http://www.amazon.ca/Radio-Flyer-Classic-Tricycle-Handle/dp/B002SW4856/ref=sr_1_1?ie=UTF8&qid=1411947435&sr=8-1&keywords=tricycles"
  )

  trike.categories.push(baby, bicycle)

  biketrailer = Product.create(
    name: 'Double Baby Bike Trailer', 
    description: "All the joy of togetherness with none of the pleasure of biking.",
    price: "169.99",
    img_filepath: "/img/biketrailer.jpg",
    url: "http://www.amazon.ca/Aosom-Double-Trailer-Jogger-Stroller/dp/B00552W2L8/ref=sr_1_cc_1?s=aps&ie=UTF8&qid=1411947983&sr=1-1-catcorr&keywords=baby+bike+trailer"
  )

  biketrailer.categories.push(baby, bicycle)






# ===== Favourite seed data =====

  user1 = User.find(1) #Dorothy black - total hipster
  user1.favourites.create(product_id: 23, user_id: 1)
  user1.favourites.create(product_id: 10, user_id: 1)
  user1.favourites.create(product_id: 6, user_id: 1)
  user1.favourites.create(product_id: 18, user_id: 1) 
  user1.favourites.create(product_id: 30, user_id: 1) 

  user2 = User.find(2) #julie berry - expensive tastes
  user2.favourites.create(product_id: 4, user_id: 2)
  user2.favourites.create(product_id: 40, user_id: 2)
  user2.favourites.create(product_id: 6, user_id: 2)
  user2.favourites.create(product_id: 45, user_id: 2)
  user2.favourites.create(product_id: 5, user_id: 2)
  

  user3 = User.find(3) #Teresa Smith - single with dogs
  user3.favourites.create(product_id: 2, user_id: 3) 
  user3.favourites.create(product_id: 11, user_id: 3)  
  user3.favourites.create(product_id: 13, user_id: 3)
  user3.favourites.create(product_id: 14, user_id: 3) 
  user3.favourites.create(product_id: 57, user_id: 3)

  user4 = User.find(4) #phyllis johnson - Wellness expert
  user4.favourites.create(product_id: 62, user_id: 4)
  user4.favourites.create(product_id: 30, user_id: 4) 
  user4.favourites.create(product_id: 22, user_id: 4) 
  user4.favourites.create(product_id: 61, user_id: 4)
  user4.favourites.create(product_id: 48, user_id: 4)

  user5 = User.find(5) # Victor Bailey - doesn't have time for holidays
  user5.favourites.create(product_id: 52, user_id: 5) 
  user5.favourites.create(product_id: 60, user_id: 5)
  user5.favourites.create(product_id: 2, user_id: 5)
  user5.favourites.create(product_id: 4, user_id: 5)
  user5.favourites.create(product_id: 6, user_id: 5)

  user6 = User.find(6) #kim stevens - wholesome gamer chick
  user6.favourites.create(product_id: 31, user_id: 6) 
  user6.favourites.create(product_id: 35, user_id: 6) 
  user6.favourites.create(product_id: 54, user_id: 6) 
  user6.favourites.create(product_id: 21, user_id: 6) 

  user7 = User.find(7) #brandon dunn - bro
  user7.favourites.create(product_id: 38, user_id: 7)
  user7.favourites.create(product_id: 41, user_id: 7) 
  user7.favourites.create(product_id: 7, user_id: 7)
  user7.favourites.create(product_id: 5, user_id: 7)
  

  user8 = User.find(8) # cheryl stone - teen mom
  user8.favourites.create(product_id: 49, user_id: 8) 
  user8.favourites.create(product_id: 47, user_id: 8)
  user8.favourites.create(product_id: 9, user_id: 8)
  user8.favourites.create(product_id: 1, user_id: 8)
  user8.favourites.create(product_id: 16, user_id: 8)

  user9 = User.find(9) # shaun flores - nice guy looking for love
  user9.favourites.create(product_id: 14, user_id: 9)
  user9.favourites.create(product_id: 50, user_id: 9)
  user9.favourites.create(product_id: 57, user_id: 9)
  user9.favourites.create(product_id: 53, user_id: 9)
  user9.favourites.create(product_id: 17, user_id: 9)

  user10 = User.find(10) #kim rodriguez - way too into herself
  user10.favourites.create(product_id: 43, user_id: 10)
  user10.favourites.create(product_id: 45, user_id: 10)
  user10.favourites.create(product_id: 40, user_id: 10)
  user10.favourites.create(product_id: 46, user_id: 10)
  user10.favourites.create(product_id: 39, user_id: 10)



end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

