# frozen_string_literal: true

require "test_helper"

class TasksResourceTest < Minitest::Test
	def test_list
		stub = stub_request("tasks", response: stub_response(fixture: "tasks/list"))
		client = Hipcall::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		tasks = client.tasks.list
	
		assert_equal Hipcall::Collection, tasks.class
		assert_equal Hipcall::Task, tasks.data.first.class 
		assert_equal 11, tasks.meta['total']
	end
end
