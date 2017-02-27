require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:myblogdb.sqlite3"

require "./models.rb"

get '/' do
erb :index1
end

post '/register' do

  @page=Pages.new(firstname: params[:firstname], lastname: params[:lastname], email: params[:email],address: params[:address])

if @page.save

  redirect '/register'

  else

  redirect '/'

  end
    end



  get '/register' do
  erb :pickupdetails
  end

post '/submit' do

  @page2=Schedules.new(date: params[:date], time: params[:time], weight: params[:weight])

  if @page2.save

    redirect '/submit'

  else

   redirect '/register'

 end
end
 get '/submit' do

 erb :success
 end




