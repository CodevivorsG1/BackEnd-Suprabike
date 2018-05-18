class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    User.find_each do |user| 
      Biycles_mailer.catalogo(user).deliver_later
    end  

  end
end
