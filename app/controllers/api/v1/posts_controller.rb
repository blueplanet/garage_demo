class Api::V1::PostsController < Api::ApplicationController
  include Garage::RestfulActions

  def require_resources
    @resources = Post.all
  end
end
