class MessagesController < ApplicationController
  def index
    @message =Message.new
  end

  def new
    respond_to do |f|
      f.html
      f.js { @message = Message.new
            @to = params[:number]
          }
    end
  end

  def create
   Message.multi_send(message_params)
   redirect_to :back
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body, :num_2, :num_3, :num_4)
  end


end
