# frozen_string_literal: true

require "test_helper"

class UsersResourceTest < Minitest::Test
	def test_list
		stub = stub_request("users", response: stub_response(fixture: "users/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v3", adapter: :test, stubs: stub)
		users = client.users.list
	
		assert_equal HipcallSdk::Collection, users.class
		assert_equal HipcallSdk::User, users.data.first.class 
		assert_equal 28, users.meta['total']
	end

	def test_retrieve
		user_id = 2
		stub = stub_request("users/#{user_id}", response: stub_response(fixture: "users/retrieve"))
		client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		user = client.users.retrieve(user_id: user_id)
	
		assert_equal HipcallSdk::User, user.class
		assert_equal 2, user.id
	end
end
