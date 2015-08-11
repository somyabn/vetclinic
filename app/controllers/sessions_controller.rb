class SessionsController < ApplicationController
	def create
		
			@customer=Customer.find_by(email: params[:email])
			
			if @customer
	            if @customer.password == params[:password]
				flash[:notice]="Successfully signed in!"
				session[:user_id]=@customer.id
				redirect_to customer_path(@customer.id)
			 else
			    flash[:alert]="Customer does not exist. Please sign up."
			    redirect_to customers_path
		    end
		end
	end

	 
	def destroy
		session[:user_id]=nil
		flash[:notice]="Logged out..."
		redirect_to root_path
	end
end