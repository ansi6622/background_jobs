class RegistrationEmailJob
  @queue = :registration_email

  def self.perform(user)
    UserMailer.registration_notice(user).deliver
  end
end