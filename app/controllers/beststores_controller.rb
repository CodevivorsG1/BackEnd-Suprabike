class BeststoresController < ActionController::Base
    def get_model
        @stores = Store.all
    end

    def ranking
        get_model
        render json: @stores.buenVen(4)
    end

end