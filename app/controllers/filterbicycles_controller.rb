class FilterbicyclesController < ActionController::Base
    def get_model
        @bicycles = Bicycle.all
    end

    def aluminio
        get_model
        render json: @bicycles.aluminio
    end

    def acero
        get_model
        render json: @bicycles.acero
    end

    def carbono
        get_model
        render json: @bicycles.fibraCarbono
    end

    def gw
        get_model
        render json: @bicycles.gw
    end

    def special
        get_model
        render json: @bicycles.special
    end

    def rale
        get_model
        render json: @bicycles.rale
    end

    def trek
        get_model
        render json: @bicycles.trek
    end

    def h500
        get_model
        render json: @bicycles.hasta(500000)
    end

    def hmillon
        get_model
        render json: @bicycles.hasta(1000000)
    end

    def dmillon
        get_model
        render json: @bicycles.desde(1000000)
    end

end