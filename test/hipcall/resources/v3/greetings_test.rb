require "test_helper"

class GreetingsResourceTest < Minitest::Test
	def test_list
		stub = stub_request("greetings", response: stub_response(fixture: "greetings/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v3", adapter: :test, stubs: stub)
		greetings = client.greetings.list
	
		assert_equal HipcallSdk::Collection, greetings.class
		assert_equal HipcallSdk::Greeting, greetings.data.first.class
	end

	def test_retrieve
		greeting_id = 1
		stub = stub_request("greetings/#{greeting_id}", response: stub_response(fixture: "greetings/retrieve"))
		client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		greeting = client.greetings.retrieve(greeting_id: greeting_id)
	
		assert_equal HipcallSdk::Greeting, greeting.class
		assert_equal 1, greeting.id
	end
end
