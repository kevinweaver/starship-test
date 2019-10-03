require "rails_helper"

RSpec.describe PersonnelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/personnels").to route_to("personnels#index")
    end

    it "routes to #new" do
      expect(:get => "/personnels/new").to route_to("personnels#new")
    end

    it "routes to #show" do
      expect(:get => "/personnels/1").to route_to("personnels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/personnels/1/edit").to route_to("personnels#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/personnels").to route_to("personnels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/personnels/1").to route_to("personnels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/personnels/1").to route_to("personnels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/personnels/1").to route_to("personnels#destroy", :id => "1")
    end
  end
end
