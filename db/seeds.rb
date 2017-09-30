Category.destroy_all
Item.destroy_all
Store.destroy_all
StorePrice.destroy_all

Category.create([{name: "Meat, Poultry, & Fish"}, {name: "Produce"}, {name: "Dairy & Eggs"}, {name: "Frozen Food"}, {name: "Beverages"}, {name: "Adult Beverages"}, {name: "Snacks & Candy"}, {name: "Beauty"}, {name: "Healthcare"}, {name: "Home"}, {name: "Baby"}, {name: "Pets"}, {name: "Office Supplies"}, {name: "Electronics"}])


Store.create([{name: "Walgreens"}, {name: "CVS/Pharmacy"}, {name: "Walmart"}, {name: "Target"}, {name: "Whole Foods"}, {name: "Safeway"}])

