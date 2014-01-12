class SurveysController < ApplicationController

  def new
    @survey = Survey.new
  end

  def create
    pry
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:notice] = "Your inquiry was successfully submitted"
      redirect_to root_url
    else
      flash[:error] = "Please correct the errors"
      redirect_to root_url
    end
  end

  private
  def survey_params
    params.require(:survey).permit(:scheduling,:recommend,:receptionist_greeting,:completing_forms,
      :awaiting_procedure,:technologist,:explanation,:patient_privcacy,:cleanliness,:overall_experience,
      :hear_about)
  end
end



