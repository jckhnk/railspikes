class MessagesController < ApplicationController

  def get
    @message = Message.new
  end

  def post
    @message = Message.new(params[:message])

    if @message.valid?
      MessageMailer.contact(@message).deliver
      redirect_to message_path,  :notice => "Your message has been sent."
    else
      flash.now[:error] = @message.errors.messages
      render 'messages/get'
    end

  end

end
