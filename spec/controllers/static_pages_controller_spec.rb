require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
#    it "should render the home template for the home page" do
#      get :show, :id => 'home'
#      response.should render_template('static_pages/home')
#    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'aboutUs'" do
    it "returns http success" do
      get 'aboutUs'
      response.should be_success
    end
  end

end
