class PdfsController < ActionController::Base
    before_action :get_data, only: [:show_cot]
    skip_before_action :authenticate_user_from_token!
    def get_model
      #@bicycle = Bicycle.find(params[:id])
      @bicycles = Bicycle.all
    end
  
    def get_data
        @bicycle_to_assemble = BicycleToAssemble.find(params[:id])
        @components = @bicycle_to_assemble.components
        @user=@bicycle_to_assemble.user
        @count = 1
    end

    def  show
        get_model
          respond_to do |format|
              format.pdf do
                  render pdf: "template", template: "../views/pdfs/template"  
              end
          end
    end

    def  show_cot
        get_data
          respond_to do |format|
              format.pdf do
                  render pdf: "template", template: "../views/pdfs/template_bike"  
              end
          end
    end

end