module Breeze
  class Config
    def initialize(port, ip)
      @port = port ? port : 3000
      @ip = ip ? ip : "0.0.0.0"
    end


  end
end
