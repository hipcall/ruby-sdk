module Hipcall
	class CdrResource < Resource
		def list(**params)
			response = get_request("cdrs", params: params)
			Collection.from_response(response, key: "data", type: Cdr)
		end

		def retrieve(year:, mounth:, day:, task_id:)
			Cdr.new get_request("cdrs/#{year}/#{mounth}/#{day}/#{cdr_uuid}").body.dig("data")
		end

		def create(**attributes)
			Cdr.new post_request("cdrs", body: attributes).body.dig("data")
		end
	end
end
