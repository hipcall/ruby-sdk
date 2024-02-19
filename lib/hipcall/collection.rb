module HipcallSdk
	class Collection
		attr_reader :data, :meta

		def self.from_response(response, key:, type:)
			body = response.body
			new(
				data: body[key].map { |attrs| type.new(attrs) },
				meta: body["meta"],
			)
		end

		def initialize(data:, meta:)
			@data = data
			@meta = meta
		end
	end
end