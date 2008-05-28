require 'lib/string'

describe String do
  it "should create md5 hash with to_md5" do
    'moo'.to_md5.should eql(Digest::MD5.hexdigest('moo'))
  end
end