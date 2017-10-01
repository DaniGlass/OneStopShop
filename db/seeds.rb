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
dozen_eggs.store_prices.create(store_id: 3, price: 3.20)
dozen_eggs.store_prices.create(store_id: 4, price: 3.75)
dozen_eggs.store_prices.create(store_id: 5, price: 5.29)
dozen_eggs.store_prices.create(store_id: 6, price: 3.99)

### Butter ###
butter = Item.create([{category_id: 3, name: "Organic Butter, 1 lb.", description: "Certified Organic, unsalted.", image_url: "https://media.npr.org/assets/img/2017/02/23/butter1_wide-b23d6a7af9100ca3d155a4bd7a2f90e2ae3d1bfe.jpg?s=1400", tags: "butter sticks"}])
butter.store_prices.create(store_id: 3, price: 5.20)
butter.store_prices.create(store_id: 4, price: 6.75)
butter.store_prices.create(store_id: 5, price: 8.29)
butter.store_prices.create(store_id: 6, price: 6.99)

### Shredded Cheese ###
shredded_cheese = Item.create([{category_id: 3, name: "Mild Shredded Cheddar, 8 oz.", description: "Vegetarian. Delicious Natural Cheese.", image_url: "http://files.recipetips.com/images/glossary/c/cheese_shredded_cheddar.jpg", tags: "cheese shredded cheddar mild"}])
shredded_cheese.store_prices.create(store_id: 3, price: 3.50)
shredded_cheese.store_prices.create(store_id: 4, price: 3.75)
shredded_cheese.store_prices.create(store_id: 5, price: 4.49)
shredded_cheese.store_prices.create(store_id: 6, price: 2.99)

### Milk ###
fat_free_milk = Item.create([{category_id: 3, name: "Organic Fat Free, 1 gallon", description: "Organic, Vitamin D!", image_url: "http://img.thrfun.com/img/015/737/milk_jug_l2.jpg", tags: "milk fat free fat-free moo"}])
fat_free_milk.store_prices.create(store_id: 3, price: 6.50)
fat_free_milk.store_prices.create(store_id: 4, price: 7.75)
fat_free_milk.store_prices.create(store_id: 5, price: 8.49)
fat_free_milk.store_prices.create(store_id: 6, price: 7.99)

### coffee creamer ###
coffee_creamer = Item.create([{category_id: 3, name: "Coffee Creamer, French Vanilla", description: "Organic, Vitamin D!", image_url: "http://2.bp.blogspot.com/-aVDzXM5KQ1c/USRFjuv39WI/AAAAAAAAfIc/NVfMgjqq4nI/s1600/coffee-mate-french-vanilla.png", tags: "coffee creamer french vanilla"}])
coffee_creamer.store_prices.create(store_id: 3, price: 2.99)
coffee_creamer.store_prices.create(store_id: 4, price: 2.99)
coffee_creamer.store_prices.create(store_id: 6, price: 3.29)

################## Category 4: Frozen Foods

fr_taquitos = Item.create([{category_id: 4, name: "Taquitos, count: 24", description: "Delicious Chicken Taquitos!", image_url: "http://www.ourbestbites.com/wp-content/uploads/2014/07/our-best-bites-baked-taquitos.jpg", tags: "taquitos microwaveable frozen"}])
fr_taquitos.store_prices.create(store_id: 3, price: 5.99)
fr_taquitos.store_prices.create(store_id: 4, price: 6.59)
fr_taquitos.store_prices.create(store_id: 6, price: 6.79)

bagel_bites = Item.create([{category_id: 4, name: "Bagel Bites, count: 40", description: "When pizza is on a bagel, you can have pizza anytime - Maren", image_url: "https://shop.safeway.com/productimages/200x200/148300188_200x200.jpg", tags: "bagel bites microwaveable frozen", tags: "bagel bites"}])
fr_taquitos.store_prices.create(store_id: 3, price: 9.99)
fr_taquitos.store_prices.create(store_id: 4, price: 10.59)
fr_taquitos.store_prices.create(store_id: 6, price: 11.19)

digiorno = Item.create([{category_id: 4, name: "Pizza Rising Crust Four Cheese", description: "We start with our preservative-free rising crust, and then top it off with our signature sauce, made from scratch using California vine-ripened tomatoes", image_url: "https://shop.safeway.com/productimages/200x200/148050178_200x200.jpg", tags: "pizza frozen"}])
digiorno.store_prices.create(store_id: 3, price: 4.99)
digiorno.store_prices.create(store_id: 4, price: 5.50)
digiorno.store_prices.create(store_id: 6, price: 5.99)

############## Category 5: Beverages

ground_coffee = Item.create([{category_id: 5, name: "French Roast, 12 oz.", description: "French Roast Ground", image_url: "https://a1coffee.net/media/catalog/category/ground_coffee_.jpg", tags: "coffee ground"}])
ground_coffee.store_prices.create(store_id: 3, price: 8.99)
ground_coffee.store_prices.create(store_id: 4, price: 9.50)
ground_coffee.store_prices.create(store_id: 5, price: 11.99)
ground_coffee.store_prices.create(store_id: 6, price: 9.99)

tea = Item.create([{category_id: 5, name: "Green Tea, count: 40", description: "A harmonious blend of green tea with lemongrass & spearmint.", image_url: "http://greentea-kyoto.info/image/tea_bag/b1.jpg", tags: "green tea bag"}])
tea.store_prices.create(store_id: 3, price: 4.00)
tea.store_prices.create(store_id: 4, price: 4.20)
tea.store_prices.create(store_id: 5, price: 4.49)
tea.store_prices.create(store_id: 6, price: 4.40)

cranberry = Item.create([{category_id: 5, name: "Cranberry Juice Cocktail", brand: "Ocean Spray", description: "100% Vitamin C", image_url: "https://i5.walmartimages.com/asr/7e005b10-8b96-4ecb-815d-0043f20d74c8_1.b28b6ea931ceb30657ae47adcaa5551f.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF", tags: "cranberry juice"}])
cranberry.store_prices.create(store_id: 3, price: 4.00)
cranberry.store_prices.create(store_id: 4, price: 4.20)
cranberry.store_prices.create(store_id: 6, price: 4.40)

lacroix = Item.create([{category_id: 5, name: "LaCroix Sparkling Water Lime, count: 12", brand: "LaCroix", description: "Every millenial's dream", image_url: "https://shop.safeway.com/productimages/100x100/108101500_100x100.jpg", tags: "cranberry juice"}])
cranberry.store_prices.create(store_id: 3, price: 4.90)
cranberry.store_prices.create(store_id: 4, price: 6.20)
cranberry.store_prices.create(store_id: 6, price: 5.80)

################ Category: 6 Adult Beverages
