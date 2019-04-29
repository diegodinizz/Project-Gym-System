require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/member.rb' )
also_reload( '../models/*' )

# index
get '/members' do
  @members = Member.all()
  erb(:"members/index")
end

# new
get '/members/new' do
  erb(:"members/new")
end

# show
get '/members/:id' do
  @member = Member.find(params[:id])
  erb(:"members/show")
end

# create
post '/members/sigh-up' do
  @members = Member.new(params)
  @members.save()
  erb(:"members/create")
end

# edit
get '/members/:id/edit' do
  @members = Member.find(params[:id])
  erb(:"/members/edit")
end

# update
post '/members/:id' do
  Member.new(params).update
  redirect to '/members'
end
