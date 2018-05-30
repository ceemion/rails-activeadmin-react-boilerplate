require "rails_helper"

RSpec.describe IngredientsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/ingredients").to_not route_to("ingredients#index")
    end

    it "routes to #show" do
      expect(:get => "/api/ingredients/1").to_not route_to("ingredients#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/api/ingredients").to_not route_to("ingredients#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/ingredients/1").to_not route_to("ingredients#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/ingredients/1").to_not route_to("ingredients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/ingredients/1").to_not route_to("ingredients#destroy", :id => "1")
    end

  end
end
