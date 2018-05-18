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

            for i in arrayString
                if i.include? "precio"
                    i = i.to_s.split('=')
                    precio = i[1]
                elsif i.include? "marca"
                    i = i.to_s.split('=')
                    marca = i[1]
                elsif i.include? "material"
                    i = i.to_s.split('=')
                    material = i[1]
                elsif i.include? "tipouso"
                    i = i.to_s.split('=')
                    tipouso = i[1]
                end
            end

            #render json: material
            render json: @bicycles.urlfilter(marca, material, tipouso, precio)
        else
            render json: "It didnt get any parameter"
        end
    end

end