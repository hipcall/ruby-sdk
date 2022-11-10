module HipcallSdk
	class NumberResource < Resource
		def list(**params)
			response = get_request("numbers", params: params)
			Collection.from_response(response, key: "data", type: Number)
		end

		def retrieve(number_id:)
			Number.new get_request("numbers/#{number_id}").body.dig("data")
		end
	end
end
