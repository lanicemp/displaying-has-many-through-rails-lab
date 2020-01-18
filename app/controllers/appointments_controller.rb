class AppointmentsController < ApplicationController

    # def new 
    #     @appointment = Appointment.new
    #     @doctor = @appointment.doctor
    #     @patient = @appointment.patient
        
    # end 

    def create
        Appointment.create(appointment_params)
        redirect_to appointment_path
    end 
 

    def show 
        @appointment= Appointment.find(params[:id])
        @doctor = @appointment.doctor
        @patient = @appointment.patient
    end 

    # private 

    # def appointment_params
    #     params.require(:appointment)
    # end 



end
