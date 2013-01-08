require 'spec_helper'

describe ApplicationHelper do
  
  it "should do full_title" do
    helper.full_title('Home').should == 'Basic app | Home'
  end
  it "should do base_title" do
    helper.full_title('').should == 'Basic app'
  end

end
