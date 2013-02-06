require 'spec_helper'

describe Task do
  before do
    @task = FactoryGirl.create(:task) 
  end

  subject { @task }

  it { should respond_to(:code) }
  it { should respond_to(:title) }
  it { should respond_to(:sequence) }
  
  it {should be_valid}
end
