require 'spec_helper'

describe Project do
    before do
    @project = FactoryGirl.create(:project) 
  end

  subject { @project }

  it { should respond_to(:name) }
  
  it {should be_valid}
end
