class UserMailer < ApplicationMailer
  def registration_confirmation(user)
    recipients  user.email
    from        "webmaster@example.com"
    subject     "Thank you for registering"
    body        :user => user
  end
end








# Documentation

# class UserMailer < ApplicationMailer
#   default from: 'notifications@example.com'
#
#   def welcome_email(user)
#     @user = user
#     @url  = 'http://example.com/login'
#     mail(to: @user.email, subject: 'Welcome to My Awesome Site')
#   end
# end
