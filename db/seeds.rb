Category.destroy_all
Item.destroy_all
Store.destroy_all
StorePrice.destroy_all

Category.create([{name: "Meat, Poultry, & Fish"}, {name: "Produce"}, {name: "Dairy & Eggs"}, {name: "Frozen Food"}, {name: "Beverages"}, {name: "Adult Beverages"}, {name: "Snacks & Candy"}, {name: "Beauty"}, {name: "Healthcare"}, {name: "Home"}, {name: "Baby"}, {name: "Pets"}, {name: "Office Supplies"}, {name: "Electronics"}])

Store.create([{name: "Walgreens"}, {name: "CVS/Pharmacy"}, {name: "Walmart"}, {name: "Target"}, {name: "Whole Foods"}, {name: "Safeway"}])

############# Category 1: Meat/Poultry/Fish

#### Ground Beef ####
ground_beef = Item.create([{category_id: 1, name: "Ground Beef, 1 lb.", description: "Grass Fed Ground Beef 85% Lean, 15\% Fat", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350%2C200&ssl=1", tags: "ground beef hamburger burger"}])
ground_beef.store_prices.create(store_id: 3, price: 7.50)
ground_beef.store_prices.create(store_id: 4, price: 7.99)
ground_beef.store_prices.create(store_id: 5, price: 10.99)
ground_beef.store_prices.create(store_id: 6, price: 5.84)

##### Chicken #####
chicken_thigh = Item.create([{category_id: 1, name: "Chicken Thigh / lb. ", brand: "Chicken Drumsticks", description: "Packaged Chicken Drumsticks", image_url: "http://img.21food.com/20110609/product/1305015015796.jpg", tags: "chicken leg drumstick"}])
chicken_thigh.store_prices.create(store_id: 3, price: 4.59)
chicken_thigh.store_prices.create(store_id: 4, price: 7.59)
chicken_thigh.store_prices.create(store_id: 5, price: 9.19)
chicken_thigh.store_prices.create(store_id: 6, price: 6.39)

chicken_breast = Item.create([{category_id: 1, name: "Chicken Breast / lb.", brand: "Organics", description: "Chicken Breast Boneless Skinless", image_url: "https://images-na.ssl-images-amazon.com/images/I/719JxkiwTVL._AC_UL320_SR316,320_.jpg", tags: "chicken breast"}])
chicken_breast.store_prices.create(store_id: 3, price: 4.50)
chicken_breast.store_prices.create(store_id: 4, price: 7.99)
chicken_breast.store_prices.create(store_id: 5, price: 9.99)
chicken_breast.store_prices.create(store_id: 6, price: 6.99)

### Turkey ###
deli_turkey = Item.create([{category_id: 1, name: "Sliced Deli Turkey", brand: "Deli", description: "Smoked Turkey Breast", image_url: "https://data.beyonddiet.com/getimage.imhx?img=01_15_70_14_1157014-166013.jpg&sw=450&sh=450&w=710&cust=2x1", tags: "turkey deli lunch meat"}])
deli_turkey.store_prices.create(store_id: 4, price: 6.99)
deli_turkey.store_prices.create(store_id: 5, price: 10.99)
deli_turkey.store_prices.create(store_id: 6, price: 7.99)

### Ham ###
deli_ham = Item.create([{category_id: 1, name: "Sliced Deli Ham", brand: "Deli", description: "S", image_url: "http://linfordofalaska.com/store/images/3005-ALP186.jpg", tags: "deli lunch meat ham"}])
deli_ham.store_prices.create(store_id: 4, price: 6.59)
deli_ham.store_prices.create(store_id: 4, price: 10.89)
deli_ham.store_prices.create(store_id: 4, price: 7.39)

#### Fish ####
shrimp = Item.create([{category_id: 1, name: "Cooked/Peeled Cocktail Shrimp, 1 lb.", description: "Cooked and Peeled Shrimp ready for serving.", image_url: "http://perudelights.com/wp-content/uploads/2013/03/shrimp-cocktail-9.jpg", tags: "cocktail shrimp"}])
shrimp.store_prices.create(store_id: 3, price: 8.00)
shrimp.store_prices.create(store_id: 4, price: 11.29)
shrimp.store_prices.create(store_id: 5, price: 12.59)
shrimp.store_prices.create(store_id: 6, price: 9.99)

halibut = Item.create([{category_id: 1, name: "Halibut Fillet, 12 oz.", brand: "Wild Alaska", description: "All natural, skinless, wild caught in Alaska.", image_url: "http://dib2dg2nm3unf.cloudfront.net/i/product/hc02-alaskan-halibut.jpg", tags: "fish fillet halibut skinless"}])
halibut.store_prices.create(store_id: 3, price: 17.69)
halibut.store_prices.create(store_id: 4, price: 19.90)
halibut.store_prices.create(store_id: 5, price: 25.00)
halibut.store_prices.create(store_id: 6, price: 22.49)

salmon = Item.create([{category_id: 1, name: "Alaskan Salmon 16 oz.", brand: "Wild Alaskan Salmon", description: "Responsibly sourced, versatile protein, packed with nutrients.", image_url: "https://target.scene7.com/is/image/Target/49178873?wid=520&hei=520&fmt=pjpeg", tags: "fish fillet salmon"}])
salmon.store_prices.create(store_id: 3, price: 14.59)
salmon.store_prices.create(store_id: 4, price: 15.99)
salmon.store_prices.create(store_id: 5, price: 17.39)
salmon.store_prices.create(store_id: 6, price: 13.49)

ahi_tuna = Item.create([{category_id: 1, name: "Ahi Tuna Steaks 12 oz.", description: "Wild caught, fair trade certified, sushi quality.", image_url: "https://9woclymefe-flywheel.netdna-ssl.com/wp-content/uploads/Raw-Ahi-Tuna.jpg", tags: "fish steaks tuna ahi"}])
ahi_tuna.store_prices.create(store_id: 3, price: 9.99)
ahi_tuna.store_prices.create(store_id: 4, price: 12.19)
ahi_tuna.store_prices.create(store_id: 5, price: 13.59)
ahi_tuna.store_prices.create(store_id: 6, price: 11.19)



################### Produce

#### Avocado ####
avocado = Item.create([{category_id: 2, name: "Avocado", brand: "Hass", description: "Organic Avocado", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/155x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_bcb00e2e-0373-4aa5-acef-515e35726278.jpg", tags: "avocado "}])
avocado.store_prices.create(store_id: 4, price: 1.99)
avocado.store_prices.create(store_id: 5, price: 2.50)
avocado.store_prices.create(store_id: 6, price: 1.99)


#### Broccoli ####
broccoli = Item.create([{category_id: 2, name: "Broccoli Crown", brand: "Produce", description: "Fresh Broccoli Crowns", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/600x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_42d7673d-8670-469d-8a32-0fc5760e1a7f.jpg", tags: "broccoli brocoli crown "}])
broccoli.store_prices.create(store_id: 3, price: 1.99)
broccoli.store_prices.create(store_id: 4, price: 2.59)
broccoli.store_prices.create(store_id: 5, price: 3.99)
broccoli.store_prices.create(store_id: 6, price: 2.79)

#### Asparagus ####
asparagus = Item.create([{category_id: 2, name: "Local Asparagus, per lb.", brand: "Produce", description: "Enjoy this spring favorite veggie raw, in salads, steamed, or roasted.", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/600x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_7b757912-89ea-4f37-8aa6-3290d90eeb43.jpg", tags: "asparagus spears "}])
asparagus.store_prices.create(store_id: 3, price: 4.99)
asparagus.store_prices.create(store_id: 4, price: 4.89)
asparagus.store_prices.create(store_id: 5, price: 6.99)
asparagus.store_prices.create(store_id: 6, price: 5.59)


#### Bell Peppers ####
red_bell_pepper = Item.create([{category_id: 2, name: " Red Bell Pepper", brand: "Produce", description: "Perfect for snacking, salads, and grilling.", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/600x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_748bbd55-f1ee-4760-9a37-873bd4fe1dd8.jpg", tags: "peppers pepper red bell"}])
red_bell_pepper.store_prices.create(store_id: 3, price: 0.99)
red_bell_pepper.store_prices.create(store_id: 4, price: 0.99)
red_bell_pepper.store_prices.create(store_id: 5, price: 1.99)
red_bell_pepper.store_prices.create(store_id: 6, price: 1.20)

green_bell_pepper = Item.create([{category_id: 2, name: "Green Bell Peppers", brand: "Produce", description: "Perfect for snacking, salads, and grilling.", image_url: "https://shop.safeway.com/productimages/200x200/184480005_200x200.jpg", tags: "peppers pepper green bell"}])
green_bell_pepper.store_prices.create(store_id: 6, price: 0.70)
green_bell_pepper.store_prices.create(store_id: 6, price: 0.90)
green_bell_pepper.store_prices.create(store_id: 6, price: 1.90)
green_bell_pepper.store_prices.create(store_id: 6, price: 1.00)

orange_bell_pepper = Item.create([{category_id: 2, name: "Orange Bell Peppers", brand: "Produce", description: "Perfect for snacking, salads, and grilling.", image_url: "https://shop.safeway.com/productimages/100x100/184480013_100x100.jpg", tags: "peppers pepper orange bell"}])
orange_bell_pepper.store_prices.create(store_id: 3, price: 1.20)
orange_bell_pepper.store_prices.create(store_id: 4, price: 1.50)
orange_bell_pepper.store_prices.create(store_id: 5, price: 1.99)
orange_bell_pepper.store_prices.create(store_id: 6, price: 1.70)


#### Onion ####

red_onion = Item.create([{category_id: 2, name: "Red Onion", brand: "Produce", description: "Red Onions are in season year-round", image_url: "https://d2d8wwwkmhfcva.cloudfront.net/600x/filters:fill(FFF,true):format(jpg)/d2lnr5mha7bycj.cloudfront.net/product-image/file/large_55e5259d-438f-4358-89cb-683a8f4874de.jpg", tags: "onions red"}])
red_onion.store_prices.create(store_id: 3, price: 1.20)
red_onion.store_prices.create(store_id: 4, price: 1.75)
red_onion.store_prices.create(store_id: 5, price: 2.59)
red_onion.store_prices.create(store_id: 6, price: 1.64)

yellow_onion = Item.create([{category_id: 2, name: "Yellow Onion", brand: "Produce", description: "Yellow Onions are in season year-round", image_url: "https://shop.safeway.com/productimages/200x200/184710074_200x200.jpg", tags: "onions white yellow"}])
yellow_onion.store_prices.create(store_id: 3, price: 1.20)
yellow_onion.store_prices.create(store_id: 4, price: 1.75)
yellow_onion.store_prices.create(store_id: 5, price: 2.59)
yellow_onion.store_prices.create(store_id: 6, price: 1.64)

#### Tomato ####
large_tomato = Item.create([{category_id: 2, name: "Large Red Tomato", brand: "Produce", description: "These delicate beauties are ripened on the vine.", image_url: "https://shop.safeway.com/productimages/100x100/184570063_100x100.jpg", tags: "tomatoe tomato heirloom"}])
large_tomato.store_prices.create(store_id: 3, price: 1.20)
large_tomato.store_prices.create(store_id: 4, price: 1.75)
large_tomato.store_prices.create(store_id: 5, price: 2.59)
large_tomato.store_prices.create(store_id: 6, price: 1.64)

################## Category 3: Dairy and Eggs

### Eggs ###
dozen_eggs = Item.create([{category_id: 3, name: "1 Dozen Organic Eggs", description: "Certified Organic.", image_url: "https://media.glamour.com/photos/5695983f93ef4b09520d51ff/master/pass/health-fitness-2013-02-dozen-eggs-main.jpg", tags: "dozen eggs"}])
dozen_eggs.store_prices.create(store_id: 3, price: 4.20)
dozen_eggs.store_prices.create(store_id: 4, price: 3.75)
dozen_eggs.store_prices.create(store_id: 3, price: 3.20)
dozen_eggs.store_prices.create(store_id: 4, price: 4.75)
dozen_eggs.store_prices.create(store_id: 5, price: 5.29)
dozen_eggs.store_prices.create(store_id: 6, price: 3.99)

### Butter ###
butter = Item.create([{category_id: 3, name: "Organic Butter, 1 lb.", description: "Certified Organic, unsalted.", image_url: "https://media.npr.org/assets/img/2017/02/23/butter1_wide-b23d6a7af9100ca3d155a4bd7a2f90e2ae3d1bfe.jpg?s=1400", tags: "butter sticks"}])
butter.store_prices.create(store_id: 1, price: 5.20)
butter.store_prices.create(store_id: 2, price: 6.75)
butter.store_prices.create(store_id: 3, price: 5.20)
butter.store_prices.create(store_id: 4, price: 4.75)
butter.store_prices.create(store_id: 5, price: 8.29)
butter.store_prices.create(store_id: 6, price: 6.99)

### Shredded Cheese ###
shredded_cheese = Item.create([{category_id: 3, name: "Mild Shredded Cheddar, 8 oz.", description: "Vegetarian. Delicious Natural Cheese.", image_url: "http://files.recipetips.com/images/glossary/c/cheese_shredded_cheddar.jpg", tags: "cheese shredded cheddar mild"}])
shredded_cheese.store_prices.create(store_id: 1, price: 3.50)
shredded_cheese.store_prices.create(store_id: 2, price: 2.75)
shredded_cheese.store_prices.create(store_id: 3, price: 3.50)
shredded_cheese.store_prices.create(store_id: 4, price: 3.75)
shredded_cheese.store_prices.create(store_id: 5, price: 4.49)
shredded_cheese.store_prices.create(store_id: 6, price: 2.99)

### Milk ###
fat_free_milk = Item.create([{category_id: 3, name: "Organic Fat Free, 1 gallon", description: "Organic, Vitamin D!", image_url: "http://img.thrfun.com/img/015/737/milk_jug_l2.jpg", tags: "milk fat free fat-free moo"}])
fat_free_milk.store_prices.create(store_id: 1, price: 5.50)
fat_free_milk.store_prices.create(store_id: 2, price: 5.75)
fat_free_milk.store_prices.create(store_id: 3, price: 6.50)
fat_free_milk.store_prices.create(store_id: 4, price: 5.75)
fat_free_milk.store_prices.create(store_id: 5, price: 8.49)
fat_free_milk.store_prices.create(store_id: 6, price: 7.99)

### coffee creamer ###
coffee_creamer = Item.create([{category_id: 3, name: "Coffee Creamer, French Vanilla", description: "Organic, Vitamin D!", image_url: "http://2.bp.blogspot.com/-aVDzXM5KQ1c/USRFjuv39WI/AAAAAAAAfIc/NVfMgjqq4nI/s1600/coffee-mate-french-vanilla.png", tags: "coffee creamer french vanilla"}])
coffee_creamer.store_prices.create(store_id: 1, price: 1.99)
coffee_creamer.store_prices.create(store_id: 2, price: 1.99)
coffee_creamer.store_prices.create(store_id: 3, price: 2.99)
coffee_creamer.store_prices.create(store_id: 4, price: 2.99)
coffee_creamer.store_prices.create(store_id: 6, price: 2.29)

################## Category 4: Frozen Foods

fr_taquitos = Item.create([{category_id: 4, name: "Taquitos, count: 24", description: "Delicious Chicken Taquitos!", image_url: "http://www.ourbestbites.com/wp-content/uploads/2014/07/our-best-bites-baked-taquitos.jpg", tags: "taquitos microwaveable frozen"}])
fr_taquitos.store_prices.create(store_id: 1, price: 5.99)
fr_taquitos.store_prices.create(store_id: 2, price: 6.59)
fr_taquitos.store_prices.create(store_id: 3, price: 5.99)
fr_taquitos.store_prices.create(store_id: 4, price: 5.59)
fr_taquitos.store_prices.create(store_id: 6, price: 6.79)

bagel_bites = Item.create([{category_id: 4, name: "Bagel Bites, count: 40", description: "When pizza is on a bagel, you can have pizza anytime - Maren", image_url: "https://shop.safeway.com/productimages/200x200/148300188_200x200.jpg", tags: "bagel bites microwaveable frozen", tags: "bagel bites"}])
bagel_bites.store_prices.create(store_id: 1, price: 9.19)
bagel_bites.store_prices.create(store_id: 2, price: 10.59)
bagel_bites.store_prices.create(store_id: 3, price: 9.89)
bagel_bites.store_prices.create(store_id: 4, price: 10.59)
bagel_bites.store_prices.create(store_id: 6, price: 11.19)

digiorno = Item.create([{category_id: 4, name: "Pizza Rising Crust Four Cheese", description: "We start with our preservative-free rising crust, and then top it off with our signature sauce, made from scratch using California vine-ripened tomatoes", image_url: "https://shop.safeway.com/productimages/200x200/148050178_200x200.jpg", tags: "pizza frozen"}])
digiorno.store_prices.create(store_id: 1, price: 4.99)
digiorno.store_prices.create(store_id: 2, price: 5.80)
digiorno.store_prices.create(store_id: 3, price: 4.19)
digiorno.store_prices.create(store_id: 4, price: 5.09)
digiorno.store_prices.create(store_id: 6, price: 5.99)

############## Category 5: Beverages

ground_coffee = Item.create([{category_id: 5, name: "French Roast, 12 oz.", description: "French Roast Ground", image_url: "https://a1coffee.net/media/catalog/category/ground_coffee_.jpg", tags: "coffee ground"}])
ground_coffee.store_prices.create(store_id: 1, price: 9.19)
ground_coffee.store_prices.create(store_id: 2, price: 9.50)
ground_coffee.store_prices.create(store_id: 3, price: 10.99)
ground_coffee.store_prices.create(store_id: 4, price: 9.50)
ground_coffee.store_prices.create(store_id: 5, price: 11.99)
ground_coffee.store_prices.create(store_id: 6, price: 9.49)

tea = Item.create([{category_id: 5, name: "Green Tea, count: 40", description: "A harmonious blend of green tea with lemongrass & spearmint.", image_url: "http://greentea-kyoto.info/image/tea_bag/b1.jpg", tags: "green tea bag"}])
tea.store_prices.create(store_id: 1, price: 4.00)
tea.store_prices.create(store_id: 2, price: 3.20)
tea.store_prices.create(store_id: 3, price: 4.00)
tea.store_prices.create(store_id: 4, price: 3.20)
tea.store_prices.create(store_id: 5, price: 4.49)
tea.store_prices.create(store_id: 6, price: 4.40)

cranberry = Item.create([{category_id: 5, name: "Cranberry Juice Cocktail", brand: "Ocean Spray", description: "100% Vitamin C", image_url: "https://i5.walmartimages.com/asr/7e005b10-8b96-4ecb-815d-0043f20d74c8_1.b28b6ea931ceb30657ae47adcaa5551f.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF", tags: "cranberry juice"}])
cranberry.store_prices.create(store_id: 1, price: 4.00)
cranberry.store_prices.create(store_id: 2, price: 3.20)
cranberry.store_prices.create(store_id: 3, price: 4.40)
cranberry.store_prices.create(store_id: 4, price: 5.00)
cranberry.store_prices.create(store_id: 5, price: 4.20)
cranberry.store_prices.create(store_id: 6, price: 4.40)

lacroix = Item.create([{category_id: 5, name: "LaCroix Sparkling Water Lime, count: 12", brand: "LaCroix", description: "Every millenial's dream", image_url: "https://shop.safeway.com/productimages/100x100/108101500_100x100.jpg", tags: "cranberry juice"}])
lacroix.store_prices.create(store_id: 1, price: 5.90)
lacroix.store_prices.create(store_id: 2, price: 5.20)
lacroix.store_prices.create(store_id: 3, price: 5.80)
lacroix.store_prices.create(store_id: 4, price: 5.90)
lacroix.store_prices.create(store_id: 5, price: 6.20)
lacroix.store_prices.create(store_id: 6, price: 5.80)

################ Category: 6 Adult Beverages

### wine ###

merlot = Item.create([{category_id: 6, name: "Wild Horse Merlot Wine, 750 ml", brand: "Wild Horse", description: "Flavors of cherry and mulberry are enhanced by a creamy toasted oak finish", image_url: "https://shop.safeway.com/productimages/200x200/189054127_200x200.jpg", tags: "wine red merlot"}])
merlot.store_prices.create(store_id: 1, price: 13.00)
merlot.store_prices.create(store_id: 2, price: 12.90)
merlot.store_prices.create(store_id: 3, price: 15.00)
merlot.store_prices.create(store_id: 4, price: 12.90)
merlot.store_prices.create(store_id: 5, price: 15.90)
merlot.store_prices.create(store_id: 6, price: 13.99)

pinot = Item.create([{category_id: 6, name: "J Vineyards Russian River Pinot Gris Wine, 750 ml.", brand: "J Vineyards", description: "The wine has a clean, crisp finish, making it a versatile accompaniment to grilled trout, herb chicken or spicy dishes.", image_url: "https://shop.safeway.com/productimages/200x200/189059194_200x200.jpg", tags: "white wine pinot grigio gris"}])
pinot.store_prices.create(store_id: 1, price: 11.49)
pinot.store_prices.create(store_id: 2, price: 11.90)
pinot.store_prices.create(store_id: 3, price: 10.49)
pinot.store_prices.create(store_id: 4, price: 10.90)
pinot.store_prices.create(store_id: 5, price: 14.90)
pinot.store_prices.create(store_id: 6, price: 11.99)

chardonnay = Item.create([{category_id: 6, name: "Benziger Chardonnay Wine, 750 ml", brand: "Benziger", description: "The extra hang-time on the vine, a result of the long cool growing season, promotes fully developed and beautifully balanced tropical fruit flavors.", image_url: "https://shop.safeway.com/productimages/200x200/189057466_200x200.jpg", tags: "white wine chardonnay"}])
chardonnay.store_prices.create(store_id: 1, price: 10.79)
chardonnay.store_prices.create(store_id: 2, price: 11.10)
chardonnay.store_prices.create(store_id: 3, price: 10.49)
chardonnay.store_prices.create(store_id: 4, price: 11.90)
chardonnay.store_prices.create(store_id: 5, price: 13.90)
chardonnay.store_prices.create(store_id: 6, price: 10.99)

blue_moon = Item.create([{category_id: 6, name: "Blue Moon Beer Belgian White Ale Bottles, 12-12 Fl. Oz.", brand: "Blue Moon", description: "Brewed with valencia orange peel. Est. 1995. Belgian-style wheat ale brewed with coriander & orange peel. ", image_url: "https://shop.safeway.com/productimages/200x200/189010947_200x200.jpg", tags: "ipa blue moon beer"}])
blue_moon.store_prices.create(store_id: 1, price: 15.59)
blue_moon.store_prices.create(store_id: 2, price: 15.20)
blue_moon.store_prices.create(store_id: 3, price: 14.99)
blue_moon.store_prices.create(store_id: 4, price: 15.50)
blue_moon.store_prices.create(store_id: 5, price: 17.50)
blue_moon.store_prices.create(store_id: 6, price: 16.99)

drakes = Item.create([{category_id: 6, name: "Drakes IPA Bottles, 6-12 Fl. Oz.", brand: "Drakes", description: "This deep golden IPA is artfully balanced with a powerful hop aroma of pine & citrus, medium body, and a crisp finish.", image_url: "https://shop.safeway.com/productimages/200x200/960053209_200x200.jpg", tags: "drakes beer ipa"}])
drakes.store_prices.create(store_id: 1, price: 8.99)
drakes.store_prices.create(store_id: 2, price: 9.50)
drakes.store_prices.create(store_id: 3, price: 7.99)
drakes.store_prices.create(store_id: 4, price: 8.50)
drakes.store_prices.create(store_id: 5, price: 10.50)
drakes.store_prices.create(store_id: 6, price: 8.99)

lagunitas = Item.create([{category_id: 6, name: "Lagunitas IPA Bottles, 12-12 Fl. Oz.", brand: "Lagunitas", description: "420 divided by 35 - 12 oz'ers. Sonoma County. Est. 1993. Beer speaks. People mumble. India pale ale. Doggone good.", image_url: "https://shop.safeway.com/productimages/200x200/960017136_200x200.jpg", tags: "drakes beer ipa"}])
lagunitas.store_prices.create(store_id: 1, price: 7.99)
lagunitas.store_prices.create(store_id: 2, price: 8.50)
lagunitas.store_prices.create(store_id: 3, price: 7.99)
lagunitas.store_prices.create(store_id: 4, price: 8.50)
lagunitas.store_prices.create(store_id: 5, price: 10.50)
lagunitas.store_prices.create(store_id: 6, price: 8.99)

jose_cuervo = Item.create([{category_id: 6, name: "Jose Cuervo Gold Tequila 80 Proof - 750 Ml", brand: "Jose Cuervo", description: "Jose Cuervo Gold is a signature blend of Reposado and younger Tequilas created to make the perfect Margarita or enjoyed as a shot.", image_url: "https://shop.safeway.com/productimages/200x200/189030472_200x200.jpg", tags: "tequila alcohol gold"}])
jose_cuervo.store_prices.create(store_id: 1, price: 10.19)
jose_cuervo.store_prices.create(store_id: 2, price: 10.50)
jose_cuervo.store_prices.create(store_id: 3, price: 9.99)
jose_cuervo.store_prices.create(store_id: 4, price: 10.50)
jose_cuervo.store_prices.create(store_id: 5, price: 13.50)
jose_cuervo.store_prices.create(store_id: 6, price: 11.99)

absolut = Item.create([{category_id: 6, name: "Absolut Vodka 80 Proof - 750 Ml", brand: "Absolute", description: "Absolute since 1879. Imported. Distill from grain produced in Sweden. Enjoy responsibly.", image_url: "https://shop.safeway.com/productimages/200x200/189031534_200x200.jpg", tags: "vodka absolute absolut"}])
absolut.store_prices.create(store_id: 1, price: 10.99)
absolut.store_prices.create(store_id: 2, price: 10.59)
absolut.store_prices.create(store_id: 3, price: 11.99)
absolut.store_prices.create(store_id: 4, price: 10.50)
absolut.store_prices.create(store_id: 5, price: 13.50)
absolut.store_prices.create(store_id: 6, price: 11.99)

jack_daniels = Item.create([{category_id: 6, name: "Jack Daniels Whiskey Black Label - 750 Ml", brand: "Jack Daniels", description: " Mellowed for smoothness drop by drop through sugar maple charcoal.", image_url: "https://shop.safeway.com/productimages/200x200/189030798_200x200.jpg", tags: "jack daniels whiskey"}])
jack_daniels.store_prices.create(store_id: 1, price: 17.99)
jack_daniels.store_prices.create(store_id: 2, price: 16.69)
jack_daniels.store_prices.create(store_id: 3, price: 16.99)
jack_daniels.store_prices.create(store_id: 4, price: 17.50)
jack_daniels.store_prices.create(store_id: 5, price: 18.50)
jack_daniels.store_prices.create(store_id: 6, price: 18.99)

tanqueray = Item.create([{category_id: 6, name: "Tanqueray London Dry Gin 94.6 Proof - 1.75 Liter", brand: "Tanqueray", description: "The highest quality spirit and finest botanicals, picked at the peak of their freshness, are carefully crafted to produce its exceptional, much revered taste.", image_url: "https://shop.safeway.com/productimages/200x200/189030130_200x200.jpg", tags: "tanqueray gin"}])
tanqueray.store_prices.create(store_id: 1, price: 27.99)
tanqueray.store_prices.create(store_id: 2, price: 25.99)
tanqueray.store_prices.create(store_id: 3, price: 26.99)
tanqueray.store_prices.create(store_id: 4, price: 26.50)
tanqueray.store_prices.create(store_id: 5, price: 26.90)
tanqueray.store_prices.create(store_id: 6, price: 27.99)

######################### Category 7: Snacks & Candy

### Candy ###
redvines = Item.create([{category_id: 7, name: "American Licorice Red Vines Twist Original Red - 16 Oz", brand: "Red Vines", description: "The Red Vines candy you love has a new look. Don't forget to try our other delicious flavors: grape, cherry, black licorice. Live on the sweet side with Red Vines.", image_url: "https://shop.safeway.com/productimages/200x200/960090879_200x200.jpg", tags: "candy red vines licorice"}])
redvines.store_prices.create(store_id: 1, price: 2.59)
redvines.store_prices.create(store_id: 2, price: 2.79)
redvines.store_prices.create(store_id: 3, price: 2.99)
redvines.store_prices.create(store_id: 4, price: 3.50)
redvines.store_prices.create(store_id: 5, price: 5.90)
redvines.store_prices.create(store_id: 6, price: 3.99)

haribo = Item.create([{category_id: 7, name: "Haribo Gummi Candy Gold-Bears Original - 14 Oz", brand: "Haribo", description: "Kids and grown-ups love it so. The happy world of Haribo. Fresh. Fruity. Chewy.", image_url: "https://shop.safeway.com/productimages/200x200/301050133_200x200.jpg", tags: "candy gummy bears gummi haribo"}])
haribo.store_prices.create(store_id: 1, price: 4.59)
haribo.store_prices.create(store_id: 2, price: 4.79)
haribo.store_prices.create(store_id: 3, price: 4.99)
haribo.store_prices.create(store_id: 4, price: 4.50)
haribo.store_prices.create(store_id: 5, price: 5.00)
haribo.store_prices.create(store_id: 6, price: 4.49)

candycorn = Item.create([{category_id: 7, name: "Signature Kitchens Candy Candy Corn - 7 Oz", brand: "Signature Kitchens", description: "Signature Select candy is great for: chopping and stirring into sugar and butter cookie dough before baking; decorating baked cookies, cupcakes and brownies; topping ice cream frozen yogurt and sundaes; adding a surprise to trail mix.", image_url: "https://shop.safeway.com/productimages/200x200/960161760_200x200.jpg", tags: "candy corn halloween"}])
candycorn.store_prices.create(store_id: 1, price: 0.99)
candycorn.store_prices.create(store_id: 2, price: 1.79)
candycorn.store_prices.create(store_id: 3, price: 1.99)
candycorn.store_prices.create(store_id: 4, price: 1.50)
candycorn.store_prices.create(store_id: 5, price: 1.00)
candycorn.store_prices.create(store_id: 6, price: 1.70)

sour_worms = Item.create([{category_id: 7, name: "Signature Kitchens Candy Sour Neon Worms - 7 Oz", brand: "Signature Kitchens", description: "Decorating baked cookies, cupcakes and brownies. Topping ice cream, frozen yogurt and sundaes.", image_url: "https://shop.safeway.com/productimages/200x200/960160102_200x200.jpg", tags: "candy gummy worms sour"}])
sour_worms.store_prices.create(store_id: 1, price: 1.99)
sour_worms.store_prices.create(store_id: 2, price: 2.79)
sour_worms.store_prices.create(store_id: 3, price: 2.99)
sour_worms.store_prices.create(store_id: 4, price: 2.50)
sour_worms.store_prices.create(store_id: 5, price: 2.00)
sour_worms.store_prices.create(store_id: 6, price: 1.70)

skittles = Item.create([{category_id: 7, name: "Skittles Candy Original - 41 Oz", brand: "Skittles", description: "Decorating baked cookies, cupcakes and brownies. Topping ice cream, frozen yogurt and sundaes.", image_url: "https://shop.safeway.com/productimages/200x200/960160102_200x200.jpg", tags: "candy gummy worms sour"}])
skittles.store_prices.create(store_id: 1, price: 1.99)
skittles.store_prices.create(store_id: 2, price: 2.79)
skittles.store_prices.create(store_id: 3, price: 2.99)
skittles.store_prices.create(store_id: 4, price: 2.50)
skittles.store_prices.create(store_id: 5, price: 2.00)
skittles.store_prices.create(store_id: 6, price: 1.70)
