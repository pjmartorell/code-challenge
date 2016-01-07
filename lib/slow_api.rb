require "open-uri"
require "socket"
require "thread"

module SlowApi
  URL = "http://www.slowapi.com/delay/0.3"
  MAX_THREADS = 10

  def self.retrieve(requests, io=$stdout)
    requests_queue, buffer = Queue.new, Queue.new
    requests.times.to_a.each{|r| requests_queue.push r }

    MAX_THREADS.times.map do
      Thread.new do
        begin
          while requests_queue.pop(true)
            buffer << open(URL).read
          end
        rescue ThreadError => e
          raise unless e.message =~ /queue empty/
        end
      end
    end.each(&:join)
    io.puts buffer.size.times.map { buffer.pop }

  rescue SocketError => e
    puts "Couldn't retrieve data from \"#{ URL }\""
  end
end
