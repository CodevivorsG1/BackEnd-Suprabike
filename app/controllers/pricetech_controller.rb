class PricetechController < ActionController::Base
    skip_before_action :authenticate_user_from_token!
    def get_model
      @technicians = Technician.all
    end
  
  
    def  show
        get_model
          respond_to do |format|
              format.pdf do
                  render pdf: "pricetechs", template: "../views/pricetechs/pricetechs"  
              end
          end
    end

end