class TransactionMailer < ActionMailer::Base
    def tecnic_service(user,technician)
        mail( to: user.email,
            from: "suprabikess@gmail.com",
            subject: "Servicio tecnico solicitado",
            body: "has solicitado un servicio tecnico con thistech en breve se contactara contigo.."
        )

    end
end