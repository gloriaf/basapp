require "spec_helper"

describe ProjectsController do
  
  before :each do
    @project=FactoryGirl.create(:project)
  end

  describe "routing" do

    it "routes to #index" do
      get("/en/projects").should route_to("projects#index", locale: 'en')
    end

    it "routes to #new" do
      get("/en/projects/new").should route_to("projects#new", locale: 'en')
    end

    it "routes to #show" do
      get("/en/projects/1").should route_to("projects#show", :id => "1", locale: 'en')
    end

    it "routes to #edit" do
      get("/en/projects/1/edit").should route_to("projects#edit", :id => "1", locale: 'en')
    end

    it "routes to #create" do
      post("/en/projects").should route_to("projects#create", locale: 'en')
    end

    it "routes to #update" do
      put("/en/projects/1").should route_to("projects#update", :id => "1", locale: 'en')
    end

    it "routes to #destroy" do
      delete("/en/projects/1").should route_to("projects#destroy", :id => "1", locale: 'en')
    end

  end
end
