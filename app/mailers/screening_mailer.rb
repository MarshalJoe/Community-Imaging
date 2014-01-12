class ScreeningMailer < ActionMailer::Base
  default from: "lynlogin@gmail.com"

  def screening_email(screening)
    @screening = screening
    mail(to: "lyndawellhausen@gmail.com", subject: 'Screening request from patient')
  end

end
