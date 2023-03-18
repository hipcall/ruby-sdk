module HipcallSdk
	class ExtensionResource < Resource
		def list(**params)
			response = get_request("extensions", params: params)
			Collection.from_response(response, key: "data", type: Extension)
		end

		def retrieve(extension_id:)
			Extension.new get_request("extensions/#{extension_id}").body.dig("data")
		end
	end
end
