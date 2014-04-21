class Message < ActiveRecord::Base
  before_create :send_message

  def self.multi_send(attributes)
    Message.create(to: attributes[:to], body: attributes[:body], from: attributes[:from])

    if attributes[:num_2]
      Message.create(to: attributes[:num_2], body: attributes[:body], from: attributes[:from])
    elsif attributes[:num_3]
      Message.create(to: attributes[:num_3], body: attributes[:body], from: attributes[:from])
    elsif attributes[:num_4]
      Message.create(to: attributes[:num_4], body: attributes[:body], from: attributes[:from])
    end
  end

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
