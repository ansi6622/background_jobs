class RegistrationEmailJob
  include SuckerPunch::Job

  def perform(user)
    sleep(30)
    UserMailer.registration_notice(user).deliver
  end
end