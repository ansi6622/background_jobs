class RegistrationEmailJob
  @queue = :registration_email

  def self.perform(user_id)
    user = User.find(user_id)
    UserMailer.registration_notice(user).deliver
  end
end