class MessagesController < ApplicationController
  require 'twilio-ruby'

  def create
      
      account_sid = ENV['TWILIO_KEY']
      auth_token = ENV['TWILIO_AUTH']
      @client = Twilio::REST::Client.new account_sid, auth_token
 
      message = @client.account.messages.create(
          :body => "Don't forget to vote on Tuesday, November 4th!",
          :to => @user.phone,
          :from => ENV['TWILLIO_PHONE'],
          
          redirect_to root_path

    end
end
