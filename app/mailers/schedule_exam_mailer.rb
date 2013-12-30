class UserMailer < ActionMailer::Base
  default from: 'lynlogin@gmail.com'

  def exam_email
    mail(to: 'lyndawellhausen@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end