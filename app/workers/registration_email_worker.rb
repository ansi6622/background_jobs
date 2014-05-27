class RegistrationEmailWorker
  include Sidekiq::Worker

  def perform(user_id)
    user = User.find(user_id)
    UserMailer.registration_notice(user).deliver
  end
end