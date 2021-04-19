class ChirpService 
  def self.createChirp(params)
    @chirp = Chirp.new(chirp_params)    
    ChirpPushNotificationJob.perform_later(@chirp) if @chirp.save    
    @chirp    
  end
end