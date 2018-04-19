class WelcomeStoreMailer < ApplicationMailer
  def notify(store)
    @store = store

    mail to: store.email, subject: "Bienvenido a suprabikes"
  end
end
