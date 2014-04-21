class MessagesController < ApplicationController
  def index
    @message =Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Sent!"
      redirect_to root_path
    else
      render '/'
    end
  end

  private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end


end
