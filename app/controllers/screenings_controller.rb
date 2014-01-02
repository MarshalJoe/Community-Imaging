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
    @registration = Registration.new(params[:post])

    if @registration.save
      redirect_to registrations_path,  :notice => "Your post was saved"
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

end
