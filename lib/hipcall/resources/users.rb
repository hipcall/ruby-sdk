module Hipcall
	class UserResource < Resource
		def list(**params)
			response = get_request("users", params: params)
			Collection.from_response(response, key: "data", type: User)
		end

		def retrieve(user_id:)
			User.new get_request("users/#{user_id}").body.dig("data")
		end
	end
end
