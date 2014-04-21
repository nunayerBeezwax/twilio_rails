class Message < ActiveRecord::Base
  before_create :send_message


  private
  def send_message
    account_sid = 'AC436b69d9566e0de9ad64f8a4504de14a'
    auth_token = '5427a8e5e23caf5269a4e6bc88bf6184'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create({
          :from => from,
          :to => to,
          :body => body
          })
  end
end



#5039463616
#5037349535
