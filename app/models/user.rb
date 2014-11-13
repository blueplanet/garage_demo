class User < ActiveRecord::Base
  include Garage::Representer
  include Garage::Authorizable

  property :id
  property :name
  property :email

  def self.build_permissions(perms, other, target)
    perms.permits! :read
  end
end
