class PetsController < ApplicationController
  def index
    
  end
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pets_params)
     if @pet.save
       flash[:notice] = "You have created a new pet successfully."
       redirect_to pet_path @pet
     else
       flash[:alert] = "There was a problem saving your
       pet."
       redirect_to new_pet_path
     end
  end

  def show
    @pet = Pet.find(params[:id])
    
  end

  def delete
    @pet = Pet.find(params[:id])
    @pet.delete
  end


  private
  def pets_params
    params.require(:pet).permit(:name, :owner ,:breed, :age , :weight , 
      :dateOfLastVisit)
  end
end


