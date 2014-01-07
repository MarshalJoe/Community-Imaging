class ScreeningsController < ApplicationController
def index
    @registration = Registration.all
  end

  def show
    @registration = Registration.find(params[:id])
  end

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      redirect_to root_url,  :notice => "Your post was saved"
    else
      render "new"
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def patients
    @registration = Registration.new
  end

  private

  def registration_params
    params.require(:registration).permit(:fname, :lname, :address, :city,:state,:zip,
      :home_phone,:cell_phone,:height,:weight,:referring_physician,:procedure_type,:insurance_provider,
      :group_number,:id_number,:insurance_phone,:gunshot_bbs_shrapnel_wounds,:vascular_surgery,:pacemaker_heart_surgery,
      :brain_surgery_aneurysm_clips,:diabetic,:glucophage_metformin,:cancer_tumors,:tattoos_body_piercings,
      :kidney_liver_problems,:contrast_allergy,:ear_implants_hearing_aids,:blood_bleeding_disorder, :IUD)
  end
end
