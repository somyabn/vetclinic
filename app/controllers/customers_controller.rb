class CustomersController < ApplicationController
  def index
  	
  end
  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(customer_params)
     if @customer.save
       flash[:notice] = "You have registered successfully."
       redirect_to customer_path @customer
     else
       flash[:alert] = "There was a problem saving your
       account."
       redirect_to new_customer_path
     end
  end

  def show
  	@customer = Customer.find(params[:id])
  	@pets = @customer.pets
  end

  def delete
    @customer = Customer.find(params[:id])
    @customer.delete
  end


  private
  def customer_params
    params.require(:customer).permit(:name, :email, :password)
  end
end
