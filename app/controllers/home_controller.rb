class HomeController < ApplicationController
  def index
    @users = User.all
    UserMailer.welcome_email_to_player.deliver
  end
end
