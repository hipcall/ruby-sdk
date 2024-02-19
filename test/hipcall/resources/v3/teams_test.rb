require "test_helper"

class TeamsResourceTest < Minitest::Test
	def test_list
		stub = stub_request("teams", response: stub_response(fixture: "teams/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v3", adapter: :test, stubs: stub)
		teams = client.teams.list
	
		assert_equal HipcallSdk::Collection, teams.class
		assert_equal HipcallSdk::Team, teams.data.first.class
	end

	def test_retrieve
		team_id = 1
		stub = stub_request("teams/#{team_id}", response: stub_response(fixture: "teams/retrieve"))
		client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		team = client.teams.retrieve(team_id: team_id)
	
		assert_equal HipcallSdk::Team, team.class
		assert_equal 1, team.id
	end
end
