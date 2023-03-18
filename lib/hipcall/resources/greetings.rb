module HipcallSdk
	class GreetingResource < Resource
		def list(**params)
			response = get_request("greetings", params: params)
			Collection.from_response(response, key: "data", type: Greeting)
		end

		def retrieve(greeting_id:)
			Greeting.new get_request("greetings/#{greeting_id}").body.dig("data")
		end
	end
end
