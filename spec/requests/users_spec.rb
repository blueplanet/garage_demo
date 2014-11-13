require 'rails_helper'

RSpec.describe "Users", :type => :request do
  include RequestHelper

  describe 'GET /api/v1/users' do
    let!(:users) { create_list(:user, 3) }
    let(:resource_owner) { users.first }
    let(:users_json) do
      [
        { "id" => users[0].id, "name" => users[0].name, "email" => users[0].email },
        { "id" => users[1].id, "name" => users[1].name, "email" => users[1].email },
        { "id" => users[2].id, "name" => users[2].name, "email" => users[2].email }
      ]
    end

    it 'return user resources' do
      get '/api/v1/users', params, env
      expect(response).to have_http_status(200)
      expect(JSON(response.body)).to match(users_json)
    end
  end
end
