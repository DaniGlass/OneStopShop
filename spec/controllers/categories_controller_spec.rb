require 'rails_helper'

describe CategoriesController, type: :controller do
  let(:category) { Category.create!(name: "Produce") }

  describe "GET #index" do
    it "returns JSON" do
      get :index, :format => :json
    end
  end

  # describe "GET #show" do
  # 	it "assigns the requested category to @category" do
  #     get :show, id: category.id
	 #    expect{assigns(:category)}.to eq(category)
	 #  end
  # #   it "returns correct JSON" do 
  # #     get :show, {id: category.id}, :format => :json
  # #   end
  # end

end
