require 'spec_helper'

describe User do
  before do
    @user = User.new(username: "User", email: "user@example.com",
                     password: "1234", password_confirmation: "1234")
  end
  
  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

#  it { should be_valid}


end
