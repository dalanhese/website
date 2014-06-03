require 'sinatra'
require 'rest-client'
 ENV['PORT'] ||= '4000'
 set :port, ENV['PORT']
 set :bind, '0.0.0.0'
 get '/' do
   erb :index
 end
post '/' do
     RestClient.post 'https://AC01983fd2966d4f4b28a2624b8b8abfa7:a4fd823e75768b238b222b5c19f545fa@api.twilio.com/2010-04-01/Accounts/AC01983fd2966d4f4b28a2624b8b8abfa7/SMS/Messages/', :From => '+18017846920', :To => "#{params["sms"]}", :Body => 'Better a diamond with a flaw than a pebble without-u594203'
   erb :thanks
 end
 get '/italian' do
   erb :italian
 end
get '/portuguese' do
  "Oi!"
end
 get '/read_more' do
   erb :read_more
 end
get '/read_more_italian' do
   erb :read_more_italian
 end
post '/italian' do
     RestClient.post 'https://AC01983fd2966d4f4b28a2624b8b8abfa7:a4fd823e75768b238b222b5c19f545fa@api.twilio.com/2010-04-01/Accounts/AC01983fd2966d4f4b28a2624b8b8abfa7/SMS/Messages/', :From => '+18017846920', :To => "#{params["sms"]}", :Body => 'Meglio un diamante con un difetto che un sasso senza-u594203'
   erb :thanks_italian
 end