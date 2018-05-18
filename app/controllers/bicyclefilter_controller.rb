class BicyclefilterController < ActionController::Base
    def get_model
        @bicycles = Bicycle.all
    end

    def prueba
        get_model

        precioHasta = 99999999
        marca = "gw"
        material = "aluminio"
        tipouso = "montana"

        paradado = false

        if params[:id]
            cadena = (params[:id]).to_s
            arrayString = cadena.to_s.split('&')

            for i in arrayString
                if i.include? "precio"
                    i = i.to_s.split('=')
                    precioHasta = i[1]
                    paradado = true
                elsif i.include? "marca"
                    i = i.to_s.split('=')
                    marca = i[1].to_s.downcase
                    paradado = true
                elsif i.include? "material"
                    i = i.to_s.split('=')
                    material = i[1].to_s.downcase
                    paradado = true
                elsif i.include? "tipouso"
                    i = i.to_s.split('=')
                    tipouso = i[1].to_s.downcase
                    paradado = true
                end
            end

            if paradado
                render json: @bicycles.urlfilter(marca, material, tipouso, precioHasta)
            else
                render json: @bicycles
            end
        else
            render json: @bicycles
        end
    end

end