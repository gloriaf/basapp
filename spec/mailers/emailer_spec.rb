require "spec_helper"

describe Emailer do
  before :each do
    @user = FactoryGirl.create(:user)
  end

  describe "welcome email" do
    let(:mail) { Emailer.welcome_email(@user) }

    it "renders the headers" do
      mail.subject.should eq("Welcome to basapp!")
      mail.to.should eq([@user.email])
      mail.from.should eq(["mgfernandez@pabilos.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Welcome!")
    end
  end

  describe "cancel email" do
    let(:mail) { Emailer.cancel_email(@user) }

    it "renders the headers" do
      mail.subject.should eq("Bye to basapp!")
      mail.to.should eq([@user.email])
      mail.from.should eq(["mgfernandez@pabilos.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("succesfully canceled")
    end
  end

end
