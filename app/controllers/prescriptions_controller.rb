class PrescriptionsController < ApplicationController
  def index
    @prescriptions = current_user.prescriptions
  end

  def show
    @prescription = Prescription.find(params[:id])
    @appointment=Appointment.new
  end

  def new
    @prescription = Prescription.new
  end

  def create
    @prescription = Prescription.new
    @prescription.user_id = params[:user_id]
    @prescription.doctor_id = params[:doctor_id]
    @prescription.taken_since = params[:taken_since]
    @prescription.appointment_id = params[:appointment_id]
    @prescription.dosage = params[:dosage]
    @prescription.category = params[:category]
    @prescription.name = params[:name]
    @prescription.expiration_date=params[:expiration_date]

    if @prescription.save
      redirect_to :back, :notice => "Prescription created successfully."
    else
      render 'new'
    end
  end

  def edit
    @prescription = Prescription.find(params[:id])
  end

  def update
    @prescription = Prescription.find(params[:id])

    @prescription.user_id = params[:user_id]
    @prescription.doctor_id = params[:doctor_id]
    @prescription.taken_since = params[:taken_since]
    @prescription.appointment_id = params[:appointment_id]
    @prescription.dosage = params[:dosage]
    @prescription.category = params[:category]
    @prescription.name = params[:name]
    @prescription.expiration_date=params[:expiration_date]

    if @prescription.save
      redirect_to :back, :notice=>"Prescription created successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @prescription = Prescription.find(params[:id])

    @prescription.destroy

    redirect_to "/prescriptions", :notice => "Prescription deleted."
  end

  def welcome
      render("welcome.html.erb")
  end
end
