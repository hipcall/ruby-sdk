require "faraday"
require "faraday_middleware"

module Hipcall
	class Client
		attr_reader :api_key, :version, :region, :adapter

		def initialize(api_key:, version: "v20211124", region: "https://app.hipcall.com/api/", adapter: Faraday.default_adapter)
			@api_key = api_key
			@version = version
			@region = region
			@adapter = adapter
		end

		def connection
			@connection ||= Faraday.new do |connection|
				connection.url_prefix = region + version
				connection.request :json
				connection.response :json, content_type: "application/json"
				connection.adapter adapter
			end
		end
	end
end