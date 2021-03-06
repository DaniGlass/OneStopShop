require 'rails_helper'

describe CategoriesController, type: :controller do
  let(:category) { Category.create!(name: "Produce") }

  describe "GET #index" do
    it "returns JSON" do
      get :index, :format => :json
    end
  end

  describe "GET #show" do

  	it "assigns the requested category to @category" do
      get :show, params: { id: category.id }
	    expect(assigns(:category)).to eq(category)
	  end

    it "returns JSON" do 
      get :show, params: { id: category.id }, :format => :json
    end

  end

end
