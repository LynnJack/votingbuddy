class MessagesController < ApplicationController

  def create
      text = params["user"]["text"]
      account_sid = ENV['TWILIO_KEY']
      auth_token = ENV['TWILIO_AUTH']
      @client = Twilio::REST::Client.new account_sid, auth_token
 
      message = @client.account.messages.create(
          :body => text,
          :to => '+14153598189',
          :from => ENV['TWILIO_PHONE'])
          
      redirect_to :back

    end


      # def update
      #       @message = Message.find(params[:id])
      #       if @message.update
      #           redirect_to message_path(@message)
      #       else
      #           render 'edit'
      #       end
      # end

end





