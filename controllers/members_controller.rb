require 'sinatra' 
require_relative '../models/member.rb' 

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
post '/members' do
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

# destroy
post '/members/:id/delete' do
  members = Member.find(params[:id])
  members.delete()
  redirect to '/members'
end
