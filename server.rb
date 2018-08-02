require 'sinatra'

# Default Home Page
get '/home' do
  erb :index
end

# Redirects localhost:4567/ to the home page
get '/' do
  redirect to('/home')
end

# portfolio page
get '/portfolio' do
  erb :gallery_portfolio
end

# Redirect of gallery to portfolio page
get '/gallery' do
  redirect to('/portfolio')
end

# About page
get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

# Favourites page
get '/favourites' do
  @fav_links = ['Reddit.com', 'YouTube.com', 'StackOverflow.com', 'Amazon.com']
  erb :favourites
end
