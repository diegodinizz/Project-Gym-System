require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/attendences_controller.rb')
require_relative('controllers/gymclasses_controller.rb')
require_relative('controllers/members_controller.rb')
also_reload('./models/*')

get '/' do
  erb(:index)
end
