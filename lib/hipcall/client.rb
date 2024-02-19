require "faraday"
require "faraday_middleware"

module HipcallSdk
	class Client
		attr_reader :api_key, :version, :base_url, :adapter

		def initialize(api_key:, version: "v3", base_url: "https://use.hipcall.com/api/", adapter: Faraday.default_adapter, stubs: nil)
			@api_key = api_key
			@version = version
			@base_url = base_url
			@adapter = adapter
			@stubs = stubs
		end

		def connection
			@connection ||= Faraday.new (base_url + version) do |connection|
				connection.request :authorization, :Bearer, api_key
				connection.request :json, :accept => 'application/json'
				connection.response :json, content_type: "application/json"
				connection.adapter adapter, @stubs
			end
		end

		def calls
			CallResource.new(self)
		end

		def comments
			CommentResource.new(self)
		end

		def companies
			CompanyResource.new(self)
		end

		def contacts
			ContactResource.new(self)
		end

		def extensions
			ExtensionResource.new(self)
		end

		def greetings
			GreetingResource.new(self)
		end

		def numbers
			NumberResource.new(self)
		end

		def tasks
			TaskResource.new(self)
		end

		def teams
			TeamResource.new(self)
		end

		def users
			UserResource.new(self)
		end
	end
end