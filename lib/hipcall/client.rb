require "faraday"
require "faraday_middleware"

module Hipcall
	class Client
		attr_reader :api_key, :version, :base_url, :adapter

		def initialize(api_key:, version: "v20211124", base_url: "https://app.hipcall.com/api/", adapter: Faraday.default_adapter, stubs: nil)
			@api_key = api_key
			@version = version
			@base_url = base_url
			@adapter = adapter
			@stubs = stubs
		end

		def cdrs
			CdrResource.new(self)
		end

		def numbers
			NumberResource.new(self)
		end

		def tasks
			TaskResource.new(self)
		end

		def users
			UserResource.new(self)
		end

		def connection
			@connection ||= Faraday.new (base_url + version) do |connection|
				connection.request :authorization, :Bearer, api_key
				connection.request :json, :accept => 'application/json'
				connection.response :json, content_type: "application/json"
				connection.adapter adapter, @stubs
			end
		end
	end
end