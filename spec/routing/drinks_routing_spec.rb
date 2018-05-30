require "rails_helper"

RSpec.describe DrinksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/drinks").to route_to("drinks#index")
    end

    it "routes to #show" do
      expect(:get => "/api/drinks/1").to route_to("drinks#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/api/drinks").to route_to("drinks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/drinks/1").to route_to("drinks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/drinks/1").to route_to("drinks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/api/drinks/1").to route_to("drinks#destroy", :id => "1")
    end

  end
end
