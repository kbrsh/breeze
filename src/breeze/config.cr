module Breeze
  class Config
    def initialize(port, ip)
      @port = port ? port : 3000
      @ip = ip ? ip : "0.0.0.0"
    end

    def self.port
      return @port
    end

    def self.ip
      return @ip
    end

    def protocol(ssl)
      return ssl ? "https" : "http"
    end
  end
end
