class RegistrationEmailJob
  include SuckerPunch::Job

  def perform(user)
    UserMailer.registration_notice(user).deliver
  end
end