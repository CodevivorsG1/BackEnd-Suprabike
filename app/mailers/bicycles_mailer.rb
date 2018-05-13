
class Bicycles_mailer < ActionMailer::Base
    def catalogo(user)
      @user = user
      path = File.join Rails.root,'public', 'system', 'images','catalogo.pdf'
      attachments['catalogo.pdf'] = File.read(path)
      mail(to:  @user.email, 
        from: "suprabikes1@gmail.com",
        subject: "Catalogo de bicicletas ")
    end
  end