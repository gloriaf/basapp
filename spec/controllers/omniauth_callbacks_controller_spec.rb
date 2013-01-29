require 'spec_helper'

  describe OmniauthCallbacksController do 
    include Devise::TestHelpers 

    before do 
      request.env["devise.mapping"] = Devise.mappings[:user] 
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter] 
    end 

    it 'should authenticate and identify user if user is known' do 
      get :twitter 
      response.should be_redirect 
    end

#   it "should redirect back with an error when provider is missing" do
#      get :twitter
#      request.env["omniauth.auth"] = nil
#      response.should redirect_to root_path 
#    end

  end
