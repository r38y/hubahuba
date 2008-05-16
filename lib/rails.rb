module Rails
  def self.environment
    ENV['RAILS_ENV'].to_s.downcase
  end
  
  def self.none?
    environment.empty?
  end
  
  # This will capture and process methods like Rails.staging?
  # There is probably a better way to do this, but I have other environment names and didn't want to have
  # to hard code them in here
  def self.method_missing(method_name)
    method_trailing_char = ''
    base_method_name = method_name.to_s
    if /(.+?)([\?\!\=])$/ =~ base_method_name
      base_method_name = $1
      method_trailing_char = $2
    end
    
    base_method_name == environment
  end
end
