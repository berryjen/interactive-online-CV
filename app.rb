require 'sinatra'
require 'github_api'

get '/' do
  erb :index
end

get "/history" do
  erb :work
end

get '/repo' do
    repos= [
     { :name => "JS weather", :url => "https://github.com/berryjen/SheCodes-weather-project"},
     { :name => "react weather", :url => "https://github.com/berryjen/weather-react"}
      ]
    erb :github, { :locals => { :name => "jen", :repos => repos} }
end
# figure out how to manipulate hard-coded data to look more fluid
# copy lines 11-18
# rename 'repo' 
# use repos = Github::Repos.new :user => 'berryjen'
get '/projects' do
  repos= Github.repos.list user: 'berryjen'
  erb :github, { :locals => { :name => "jen", :repos => repos} }
end
