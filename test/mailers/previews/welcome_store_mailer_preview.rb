# Preview all emails at http://localhost:3000/rails/mailers/welcome_store_mailer
class WelcomeStoreMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_store_mailer/notify
  def notify
    WelcomeStoreMailer.notify Store.new(name_store: "sample", email: 'sample@mail.com')
  end

end
