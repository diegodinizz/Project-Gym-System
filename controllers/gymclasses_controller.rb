require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/gymclass.rb' )
also_reload( '../models/*' )

# index
get '/classes' do
  @gymclasses = Gymclass.all()
  erb(:"classes/index")
end

# new
get '/classes/new' do
  erb(:"classes/new")
end

# show
get '/classes/:id' do
  @gymclass = Gymclass.find(params[:id])
  erb(:"classes/show")
end

# create
post '/classes' do
  @gymclasses = Gymclass.new(params)
  @gymclasses.save()
  erb(:"classes/create")
end

# edit
get '/classes/:id/edit' do
  @gymclasses = Gymclass.find(params[:id])
  erb(:"/classes/edit")
end

# update
post '/classes/:id' do
  Gymclass.new(params).update
  redirect to '/classes'
end

# destroy
post '/classes/:id/delete' do
  classes = Gymclass.find(params[:id])
  classes.delete()
  redirect to '/classes'
end
