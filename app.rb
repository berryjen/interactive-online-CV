require 'sinatra'

get '/' do
  erb :index
end

get "/history" do
  erb :work
end