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
            arrayString = cadena.to_s.split('&')
            render json: arrayString[0]
            #render json: @bicycles.hasta(material)
        else
            render json: @bicycles.acero
        end
    end

end