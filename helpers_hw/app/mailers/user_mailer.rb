class UserMailer < ApplicationMailer

  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url = 'AppAcademy <everybody@appacademy.io>'
    mail(to: user.username, subject: 'Welcome to My Awesome Site')
  end

end
