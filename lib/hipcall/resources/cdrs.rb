module HipcallSdk
	class CdrResource < Resource
		def list(**params)
			response = get_request("cdrs", params: params)
			Collection.from_response(response, key: "data", type: Cdr)
		end

		def retrieve(year:, mounth:, day:, cdr_uuid:)
			Cdr.new get_request("cdrs/#{year}/#{mounth}/#{day}/#{cdr_uuid}").body.dig("data")
		end
	end
end
