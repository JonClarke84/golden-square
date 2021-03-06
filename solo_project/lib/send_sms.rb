# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require 'dotenv/load'
require 'time'

def send_sms(print_receipt)
  estimated_time = Time.now + (30 * 60)

  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']
  client = Twilio::REST::Client.new(account_sid, auth_token)

  from = '+447360542191' # Your Twilio number
  to = '07595732480' # Your mobile phone number

  client.messages.create(
  from: from,
  to: to,
  body: "#{print_receipt}.\nThank you! Your order was placed and will be delivered before #{estimated_time.strftime "%H:%M"}"
  )
end
