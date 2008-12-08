Dir[File.dirname(__FILE__) + "/lib/**/*.rb"].each do |file|
  require file
end
require 'year_after_year'
ActionController::Base.helper PlanetArgon::YearAfterYear