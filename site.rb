 require 'sinatra'
 ENV['PORT'] ||= '4000'
 set :port, ENV['PORT']
 set :bind, '0.0.0.0'
 get '/' do
   erb :index
 end
 get '/italian' do
   "Ciao!"
 end
get '/portuguese' do
  "Oi!"
end
 get '/read_more' do
   erb :read_more
 end