require 'sinatra'
require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# To find these visit https://www.twilio.com/user/account

account_sid = "AC057a2d8192eae97fdafe9dbc6c688dc6"
auth_token = "086057d5fc72ca6b195f967fce2ba375"

@client = Twilio::REST::Client.new account_sid, auth_token

@message = @client.account.messages.create({
                                  :to => "",
                                  :from => "",
                                  :body => "Hi!"})

get '/' do
  "BaBoYa3"
end