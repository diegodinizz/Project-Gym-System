require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/gymclass.rb' )
also_reload( '../models/*' )

# index
get '/classes' do
  @gymclasses = Gymclass.all()
  erb(:"classes/index")
end

# show
get '/classes/:id' do
  @gymclass = Gymclass.find(params[:id])
  erb(:"classes/show")
end
