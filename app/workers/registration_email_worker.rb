class RegistrationEmailWorker
  include Sidekiq::Worker

  def perform(user)
    UserMailer.registration_notice(user).deliver
  end
end