# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

account_sid = 'AC029da4ff5f230b0498264fd36783100a'
auth_token = 'cea9e3818ea880f0a245c08c909eb5d2'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+447360542191' # Your Twilio number
to = '07595732480' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)