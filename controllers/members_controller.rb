require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

# index
get '/members' do
  @members = Member.all()
  erb(:"members/index")
end

# show
get '/members/:id' do
  @member = Member.find(params[:id])
  erb(:"members/show")
end
