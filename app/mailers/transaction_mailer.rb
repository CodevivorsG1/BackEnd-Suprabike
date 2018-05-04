class TransactionMailer < ActionMailer::Base
    def tecnic_service(user,technician)
        @user = user
        @technician = technician
        mail( to: user.email,
            from: "suprabikes1@gmail.com",
            subject: "Servicio tecnico solicitado",
        )

    end

    def new_request(user,technician)
        @user = user
        @technician = technician
        mail( to: technician.email,
            from: "suprabikes1@gmail.com",
            subject: "Servicio tecnico solicitado",
        )

    end

    def new_purchase(user,store,items)
        @user = user
        @store = store
        @items = items
        mail( to: user.email,
            from: "suprabikes1@gmail.com",
            subject: "Nueva compra",
        )
    end
end