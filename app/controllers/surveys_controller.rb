class SurveysController < ApplicationController




  private

  def survey_params
    params.require(:survey).permit(:scheduling,:recommend,:receptionist_greeting,:completing_forms,
      :awaiting_procedure,:technologist,:explanation,:patient_privcacy,:cleanliness,:overall_experience,:hear_about)
  end
end



