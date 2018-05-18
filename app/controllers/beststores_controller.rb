class BeststoresController < ActionController::Base
    def get_model
        @stores = Store.all
    end
    #ranking de mejores tiendas
    def ranking
        get_model
        render json: @stores.buenVen(3)
    end

end