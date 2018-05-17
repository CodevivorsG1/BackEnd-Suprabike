class BicyclefilterController < ActionController::Base
    def get_model
        @bicycles = Bicycle.all
    end

    def prueba
        get_model

        precio = nil
        marca = nil
        material = nil
        tipouso = nil

        if params[:id]
            cadena = (params[:id]).to_s
            render json: cadena
            #render json: @bicycles.hasta(cadena)
        else
            render json: @bicycles.acero
        end
    end

end