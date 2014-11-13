class Api::V1::UsersController < Api::ApplicationController
  include Garage::RestfulActions

  def require_resources
    @resources = User.all
  end
end
