require 'lib/misc'

describe 'Misc' do
  it "have a method called say" do
    lambda{say("moo")}.should_not raise_error
  end
end