require 'rails_helper'

RSpec.describe "Users", :type => :request do
  include RequestHelper

  describe 'GET /api/v1/users' do
    let!(:users) { create_list(:user, 3) }

    it 'return user resources' do
      get '/api/v1/users', params, env
      expect(response).to have_http_status(200)
    end
  end
end
