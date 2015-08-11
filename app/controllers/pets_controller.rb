class PetsController < ApplicationController
  def create
  	Pet.create(title: "???", body: "something briliant here...")
  	respond_to do |format|
    format.html {redirect_to root_path, notice: "New petcreated."}
    format.js
   end
   def destroy
   	@pet=Pet.find(params[:id])
   	@pet.destroy
   	respond_to do |format|
    format.html {redirect_to root_path, notice: "pet destroyed."}
    format.js {head :no_content }

   end
  end
end
