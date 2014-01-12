class SurveyMailer < ActionMailer::Base
    default from: "lynlogin@gmail.com"

  def survey_email(survey)
   @survey = survey
   mail(to: "lyndawellhausen@gmail.com", subject: 'Survey result from patient')
  end
end
