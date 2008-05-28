require 'lib/object'

describe Object do
  it "should know if a non-empty string is not empty" do
    'moo'.not.empty?.should be_true
  end
end