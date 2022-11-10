module HipcallSdk
	class Resource
		attr_reader :client

		def initialize(client)
			@client = client
		end

		private

		def get_request(url, params: {}, headers: {})
			handle_response client.connection.get(url, params, headers)
		end
	
		def post_request(url, body:, headers: {})
			handle_response client.connection.post(url, body, headers)
		end
	
		def patch_request(url, body:, headers: {})
			handle_response client.connection.patch(url, body, headers)
		end
	
		def put_request(url, body:, headers: {})
			handle_response client.connection.put(url, body, headers)
		end
	
		def delete_request(url, params: {}, headers: {})
			handle_response client.connection.delete(url, params, headers)
		end

		def handle_response(response)
			message = response.body["errors"]
			case response.status
			when 400
				raise Error, message
			when 401
				raise Error, message
			when 403
				raise Error, message
			when 404
				raise Error, message
			when 419 
				raise Error, message
			when 429
				raise Error, message
			when 500
				raise Error, message
			end

			response
		end
	end
end