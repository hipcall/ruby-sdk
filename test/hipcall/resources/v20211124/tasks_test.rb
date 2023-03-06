# frozen_string_literal: true

require "test_helper"

class TasksResourceTest < Minitest::Test
	def test_list
		stub = stub_request("tasks", response: stub_response(fixture: "tasks/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v20211124", adapter: :test, stubs: stub)
		tasks = client.tasks.list
	
		assert_equal HipcallSdk::Collection, tasks.class
		assert_equal HipcallSdk::Task, tasks.data.first.class 
		assert_equal 11, tasks.meta['total']
	end

	def test_create
		body = {name: "Task Name Two", description: "**bla** bold"}
    stub = stub_request("tasks", method: :post, body: body, response: stub_response(fixture: "tasks/create", status: 201))
    client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    task = client.tasks.create(**body)

    assert_equal HipcallSdk::Task, task.class
    assert_equal "Task Name Two", task.name
	end
end