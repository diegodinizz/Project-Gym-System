require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/attendence.rb' )
require_relative( '../models/gymclass.rb' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

# index
get '/attendences' do
  @attendences = Attendence.all()
  erb ( :"attendences/index" )
end

# new
get '/attendences/new' do
  @gymclasses = Gymclass.all()
  @members = Member.all()
  erb(:"attendences/new")
end

# create
post '/attendences' do
  @attendences = Attendence.new(params)
  @attendences.save()
  erb(:"attendences/create")
end
