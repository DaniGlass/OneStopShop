require "rails_helper"

describe ItemsHelper do 

let!(:category) { Category.create!(name: "Meat, Poultry, & Fish") }

let!(:item1) { Item.create!(category: category, name: "Ground Beef, 1 lb.", description: "Grass Fed Ground Beef 85% Lean, 15\% Fat", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350\%2C200&ssl=1", tags: "ground beef hamburger burger") }

let!(:item2) { Item.create!(category: category, name: "Beef Soup", description: "Grass Fed Ground Beef Suop", image_url: "https://i1.wp.com/foodpoisoningbulletin.com/wp-content/uploads/Raw-Ground-Beef.jpg?resize=350\%2C200&ssl=1", tags: "beef broth") }


	describe "search" do
		context "when there are any matched items based on user input to item name" do

      input = "beef"

	    it "returns an array of itmes which include the word in the name" do
     
        	expect(ItemsHelper.search(input)).to eq [item1, item2]
	    end
	  end

	  context "when there are any matched items based on user input to item tags" do
      
      input = "broth"

	    it "returns an array of itmes which include the word in the tags" do
	    		expect(ItemsHelper.search(input)).to eq [item2]
	    end
	  end

	  context "when there are no matched item based on user input to itme name or tags" do

	  	input = "apple"

	  	it "returns empty array" do
        expect(ItemsHelper.search(input)).to eq []
	    end
		end
	end

end