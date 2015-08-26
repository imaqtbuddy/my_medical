class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    @prescription=Prescription.new
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new
    @appointment.user_id = params[:user_id]
    @appointment.notes = params[:notes]
    @appointment.doctor_id = params[:doctor_id]
    @appointment.met_on = params[:met_on]

    if @appointment.save
      redirect_to "/appointments", :notice => "Appointment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])

    @appointment.user_id = params[:user_id]
    @appointment.notes = params[:notes]
    @appointment.doctor_id = params[:doctor_id]
    @appointment.met_on = params[:met_on]

    if @appointment.save
      redirect_to "/appointments", :notice => "Appointment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    @appointment.destroy

    redirect_to "/appointments", :notice => "Appointment deleted."
  end
end
