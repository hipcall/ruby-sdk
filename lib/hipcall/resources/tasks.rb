module HipcallSdk
	class TaskResource < Resource
		def list(**params)
			response = get_request("tasks", params: params)
			Collection.from_response(response, key: "data", type: Task)
		end

		def retrieve(task_id:)
			Task.new get_request("tasks/#{task_id}").body.dig("data")
		end

		def create(**attributes)
			Task.new post_request("tasks", body: attributes).body.dig("data")
		end
	end
end
