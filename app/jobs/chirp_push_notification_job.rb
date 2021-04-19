class ChirpPushNotificationJob < ApplicationJob
  queue_as :default

  def perform(chirp)
    ChirpPushService.push(chirp)
  end
end
