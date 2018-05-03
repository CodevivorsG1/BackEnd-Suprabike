class PdfsController < ActionController::Base
    def get_model
      #@bicycle = Bicycle.find(params[:id])
      @bicycles = Bicycle.all
    end
  
  
    def  show
        get_model
          respond_to do |format|
              format.pdf do
                  render pdf: "template", template: "../views/pdfs/template"  
              end
          end
    end

end