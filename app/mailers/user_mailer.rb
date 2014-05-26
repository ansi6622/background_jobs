class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def registration_notice(user)
    mail(to: user.email)
  end
end
