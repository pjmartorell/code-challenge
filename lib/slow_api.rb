require "open-uri"
require "socket"

module SlowApi
  URL = "http://www.slowapi.com/delay/0.3"

  def self.retrieve(requests, io=$stdout)
    begin
      requests.times { io.puts open(URL).read }
    rescue SocketError => e
      puts "Couldn't retrieve data from \"#{ URL }\""
    end
  end
end