class PagesController < ApplicationController
  def chat
    @messages = Message.all
    @user = current_user
    @message = Message.new
end
end
