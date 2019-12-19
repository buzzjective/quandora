module Quandora
  class Configuration
    attr_accessor :url, :username, :password

    def initialize
      @url = ''
      @username = ''
      @password = ''
    end
  end
end
