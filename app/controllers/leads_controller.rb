class LeadsController < ApplicationController

  def new
    @lead = Lead.new
  end


  def create
    @lead = Lead.create(lead_params)
    if @lead.save
      flash[:notice] = "Your inquiry was successfully submitted"
      ScheduleExamMailer.schedule_exam_email(@lead).deliver
      redirect_to root_url
    else
      flash[:error] = "Please correct the errors"
      render 'new'
    end
  end

  private
  def lead_params
    params.require(:lead).permit(:fname, :lname, :address, :city,:state,:zip,
      :home_phone,:cell_phone, :email,:time_to_call,:status,:exam,:ordering_physician,
      :comments)
  end
end
