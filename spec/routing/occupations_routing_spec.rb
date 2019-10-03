require "rails_helper"

RSpec.describe OccupationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/occupations").to route_to("occupations#index")
    end

    it "routes to #new" do
      expect(:get => "/occupations/new").to route_to("occupations#new")
    end

    it "routes to #show" do
      expect(:get => "/occupations/1").to route_to("occupations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/occupations/1/edit").to route_to("occupations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/occupations").to route_to("occupations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/occupations/1").to route_to("occupations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/occupations/1").to route_to("occupations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/occupations/1").to route_to("occupations#destroy", :id => "1")
    end
  end
end
