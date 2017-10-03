module ItemsHelper

	def self.search(input)
  	@items = Item.all
  	matched_items = []

  	@items.each do |item|
  		
  		if item.name.downcase.include?(input.downcase)
      	matched_items << item
      end
      
      if item.tags
	      if item.tags.downcase.include?(input.downcase)
	      	matched_items << item
	      end  
	    end
  	end

    return matched_items
  end

end
