Texting apps
Build an app that lets users send text messages to their friends.
===========================
*  DONE ** As a user, I want to send a text message to a phone number, so that I can send texts from the web. Hint: Follow along with the lesson.
* As a user, I want to save contacts to an address book, so that it's easy to text them again without re-typing their phone number.
* As a user, I want to send a message to more than one person at once, so that I can mass text my friends.
* As a user, I want to send pictures in my messages, so that I can share photos and cute cat pics with my friends. Hint: Check the Twilio API docs.
* As a user who receives a text message, if I text back, I want to get an automated response telling me that the phone number can't receive texts, so that I don't get sad when the sender doesn't reply

----------------------
On your Twilio numbers page, choose your phone number, then change the messaging request URL to your localtunnel address followed by an endpoint that Twilio can POST to when it receives a test, e.g. http://j384.localtunnel.me/inboundmessages_.

Create a route and controller for creating inbound messages. Make a PORO model that can take a phone number and text the automated response back to it. When the inbound text is received, it will take the request, pass the phone number of the sender to the model, and the model then sends the automated response back.

When writing integration tests, you can simulate Twilio's request to your app by doing something like this:

describe "inbound text message" do
  it "does something..." do
    RestClient.post #make a request to your app as if you were Twilio
  end
end
Phew!
