class Message < ActiveRecord::Base
  before_create :send_message


  private
  def send_message
    begin
      account_sid = ENV['TWILIO_ACCOUNT_SID']
      auth_token = ENV['TWILIO_AUTH_TOKEN']
      @client = Twilio::REST::Client.new account_sid, auth_token
      @client.account.messages.create({
            :from => from,
            :to => to,
            :body => body
            })
    rescue
      false
    end
  end
end



#5039463616
#5037349535
