class WelcomeStoreMailer < ApplicationMailer::Base
  default from: "suprabikes@example.com"
  def notify(store)
    @store = store

    mail to: store.email, subject: "Bienvenido a suprabikes"
  end
end
