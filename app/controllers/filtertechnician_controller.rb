class FiltertechnicianController < ActionController::Base
    def get_model
        @technicians = Technician.all
    end

    def filtrar1
        get_model
        render json: @technicians.hastatanto(30000)
    end

    def filtrar2
        get_model
        render json: @technicians.hastatanto(100000)
    end

end