class PricescomponentsController < ActionController::Base
    skip_before_action :authenticate_user_from_token!
    def get_model
      @components = Component.all
    end
  
  
    def  show
        get_model
          respond_to do |format|
              format.pdf do
                  render pdf: "pricescomponents", template: "../views/pricescomponents/pricecomponents"  
              end
          end
    end

end