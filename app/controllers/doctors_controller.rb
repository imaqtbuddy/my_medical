class DoctorsController < ApplicationController
  def index
    @doctors=current_user.doctors
  end

  def show
    @doctor = Doctor.find(params[:id])
    @prescription=Prescription.new
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new
    @doctor.user_id = params[:user_id]
    @doctor.phone_number = params[:phone_number]
    @doctor.specialty = params[:specialty]
    @doctor.name = params[:name]

    if @doctor.save
      redirect_to "/doctors", :notice => "Doctor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])

    @doctor.user_id = params[:user_id]
    @doctor.phone_number = params[:phone_number]
    @doctor.specialty = params[:specialty]
    @doctor.name = params[:name]

    if @doctor.save
      redirect_to "/doctors", :notice => "Doctor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])

    @doctor.destroy

    redirect_to "/doctors", :notice => "Doctor deleted."
  end
end
