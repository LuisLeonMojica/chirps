class ChirpPushService
  include HTTParty
  base_uri "https://bellbird.joinhandshake-internal.com" 

  PUSH_URL = "/push"

  HTTP_ERRORS = [
    EOFError,
    Errno::ECONNREFUSED,
    Errno::ECONNRESET,
    Errno::EINVAL,      
    Net::HTTPBadResponse,
    Net::HTTPHeaderSyntaxError,
    Net::ProtocolError,
    Timeout::Error
  ]

  def self.initialize
    
  end

  def self.push(chirp)        
    body = { "chirp_id" =>  chirp.id}
    @options = { body: body.to_json }
    begin
      response = self.post(PUSH_URL, @options)
      if response.success?
        puts "HTTP Push Notification successfull"
        return true
      else      
        puts "HTTP Push Notification failed gracefully"        
        return false
      end
    rescue *HTTP_ERRORS => error 
      puts "HTTP Error occurred: #{error.to_s}"        
      return false
    end
  end

end