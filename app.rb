require 'sinatra' 
require_relative 'controllers/attendences_controller.rb'
require_relative 'controllers/gymclasses_controller.rb'
require_relative 'controllers/members_controller.rb'

get '/' do
  erb(:index)
end
