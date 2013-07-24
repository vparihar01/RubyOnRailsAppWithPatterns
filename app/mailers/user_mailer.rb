class UserMailer < ActionMailer::Base
  default :from => "test@test.com"
  def welcome_email_to_player
    attachments.inline['blank'] = {
        :data => File.read("#{Rails.root.to_s + '/app/assets/images/bg.jpg'}"),
        :mime_type => "image/jpg",
        :encoding => "base64"
    }
    mail(:to => "vivek1234@yopmail.com", :subject => "Welcome to here")
  end
end
