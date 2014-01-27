require 'sinatra'
require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# To find these visit https://www.twilio.com/user/account

account_sid = ""
auth_token = ""

@client = Twilio::REST::Client.new account_sid, auth_token

@message = @client.account.messages.create({
                                  :to => "",
                                  :from => "",
                                  :body => "Hi!"})

get '/' do
  "BaBoYa3"
end