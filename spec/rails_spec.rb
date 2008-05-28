require 'lib/rails'

describe Rails do
  it "should know what the environment is" do
    ENV['RAILS_ENV'] = 'Development'
    Rails.environment.should eql('development')
  end
  
  it "should know that the rails environment is staging" do
    Rails.stub!(:environment).and_return('staging')
    Rails.staging?.should be_true
  end
  
  it "should know that the rails environment is not staging" do
    Rails.stub!(:environment).and_return('development')
    Rails.staging?.should be_false
  end
  
  it "should know if there is no environment" do
    Rails.stub!(:environment).and_return('')
    Rails.none?.should be_true
  end
  
  it "should know if there is an environment" do
    Rails.stub!(:environment).and_return('staging')
    Rails.none?.should be_false
  end
end