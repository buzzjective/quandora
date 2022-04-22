require 'json'
require 'faraday'
require "quandora/version"
require "quandora/configuration"

# api calls
require "quandora/request"
require "quandora/activity"
require "quandora/answer"
require "quandora/badges"
require "quandora/bases"
require "quandora/comment"
require "quandora/end_points"
require "quandora/question"
require "quandora/report"
require "quandora/tag"
require "quandora/users"

module Quandora
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    [
      :activity, :question, :badges, :bases,
      :end_points, :report, :users
    ].each do |api|
      define_method :"#{api}" do |args = {}|
        @conn = Faraday.new(url: configuration.url) do |conn|
          conn.adapter Faraday.default_adapter # make requests with Net::HTTP
          conn.set_basic_auth(configuration.username, configuration.password)
        end

        find_api(api).new(@conn, api, args)
      end
    end

    def find_api(api)
      class_name = api.to_s.split('_').collect(&:capitalize).join
      Object.const_get("Quandora::#{class_name}")
    end
  end
end
