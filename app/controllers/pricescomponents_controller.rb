class PricescomponentsController < ActionController::Base
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