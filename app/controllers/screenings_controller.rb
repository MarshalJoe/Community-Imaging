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
    pry
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
    params.require(:registration).permit(:fname, :lname)
  end
end
