require 'rails_helper'

RSpec.describe "Posts", :type => :request do
  include RequestHelper

  describe 'GET /api/v1/posts' do
    let(:resource_owner) { create :user }
    let!(:posts) { create_list(:post, 3, user: resource_owner ) }
    let(:posts_json) do
      [
        { "id" => posts[0].id, "title" => posts[0].title, "body" => posts[0].body },
        { "id" => posts[1].id, "title" => posts[1].title, "body" => posts[1].body },
        { "id" => posts[2].id, "title" => posts[2].title, "body" => posts[2].body }
      ]
    end

    it 'return post resources' do
      get '/api/v1/posts', params, env
      expect(response).to have_http_status(200)
      expect(JSON(response.body)).to match(posts_json)
    end
  end
end
