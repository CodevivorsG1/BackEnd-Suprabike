class WelcomeMailer < ApplicationMailer::Base
  default from: "suprabikes@example.com"
  def notify(user)
    @user = user

    mail to: user.email, subject: "Bienvenido a suprabikes"
  end
end
