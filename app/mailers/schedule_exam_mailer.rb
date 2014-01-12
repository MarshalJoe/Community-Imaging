class ScheduleExamMailer < ActionMailer::Base
  default from: "lynlogin@gmail.com"

  def schedule_exam_email(lead)
    @lead = lead 
    mail(to: "lyndawellhausen@gmail.com", subject: 'Exam request from patient')
  end

end
