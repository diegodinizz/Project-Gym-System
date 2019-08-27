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

# show
get '/attendences/:id' do
  @attendence = Attendence.find(params[:id])
  erb(:"attendences/show")
end

# create
post '/attendences' do
  @attendences = Attendence.new(params)
  @attendences.save()
  erb(:"attendences/create")
end

# edit
get '/attendences/:id/edit' do
  @attendences = Attendence.find(params[:id])
  @gymclasses = Gymclass.all()
  @members = Member.all()
  erb(:"attendences/edit")
end

# update
post '/attendences/:id' do
  Attendence.new(params).update
  redirect to '/attendences'
end

# destroy
post '/attendences/:id/delete' do
  attendences = Attendence.find(params[:id])
  attendences.delete()
  redirect to '/attendences'
end
