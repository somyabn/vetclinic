class DoctersController < ApplicationController
  def index
  	
  end
  def new
  	@docter = Docter.new
  end

  def create
  	@docter = Docter.new(docter_params)
     if @docter.save
       flash[:notice] = "You have registered successfully."
       redirect_to docter_path @docter
     else
       flash[:alert] = "There was a problem saving your
       account."
       redirect_to new_docter_path
     end
  end

  def show
  	@docter = Docter.find(params[:id])
  	@customers = @docter.customers
  end

  def delete
    @docter = Docter.find(params[:id])
    @docter.delete
  end


  private
  def docter_params
    params.require(:docter).permit(:name, :address, :city, :state, :zip, :school, :yip)
  end
end


