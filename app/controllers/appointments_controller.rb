class AppointmentsController < ApplicationController
  def index
  	
  end
  def new
  	@appointment = Appointment.new
  end

  def create
  	@appointment = Appointment.new(appointment_params)
     if @appointment.save
       flash[:notice] = "You have created appointment successfully."
       redirect_to appointment_path @appointment
     else
       flash[:alert] = "There was a problem saving your
       appointment."
       redirect_to new_appointment_path
     end
  end

  def show
  	@appointment = Appointment.find(params[:id])
  	
  end

  def delete
    @appointment = Appointment.find(params[:id])
    @appointment.delete
  end

  private
  def appointment_params
    params.require(:appointment).permit(:reasonForVisit, :DateOfVisit)
  end
end


