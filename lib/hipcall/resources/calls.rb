module HipcallSdk
	class CallResource < Resource
		def list(**params)
			response = get_request("calls", params: params)
			Collection.from_response(response, key: "data", type: Call)
		end

		def retrieve(year:, mounth:, day:, call_uuid:)
			Call.new get_request("calls/#{year}/#{mounth}/#{day}/#{call_uuid}").body.dig("data")
		end
	end
end
