require 'spec_helper'

describe Message, :vcr => true do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(body: 'hi', to: '1111111', from: '5039463616')
    message.save.should be_false
  end
end

describe Message, :vcr => true do
  it "send multiple messages" do
    Message.multi_send({num_2:'5037349535', to: '4802316890', body:"hello", from:'5039463616' }).should eq '4802316890'

  end
end
