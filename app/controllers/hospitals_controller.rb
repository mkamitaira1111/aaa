class HospitalsController < ApplicationController
  def index
    @hospitals = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(hospital_params)
    @hospital.save
    redirect_to Hospitals_path

  end

  def hospital_params
    params.require(:hospital).permit(:name)
  end

end
