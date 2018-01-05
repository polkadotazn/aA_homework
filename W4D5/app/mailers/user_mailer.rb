class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail(to: user, subject: 'You\'ve got cats')
  end
end
