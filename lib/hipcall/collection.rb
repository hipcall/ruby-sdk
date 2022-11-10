module HipcallSdk
	class Collection
		attr_reader :data, :links, :meta

		def self.from_response(response, key:, type:)
			body = response.body
			new(
				data: body[key].map { |attrs| type.new(attrs) },
				links: body["links"],
				meta: body["meta"],
			)
		end

		def initialize(data:, links:, meta:)
			@data = data
			@links = links
			@meta = meta
		end
	end
end